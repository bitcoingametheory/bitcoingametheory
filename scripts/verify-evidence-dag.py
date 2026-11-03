"""Verify the public Paper 1 Merkle DAG without third-party dependencies.

python scripts/verify-evidence-dag.py path/to/paper1-evidence.json
Add --files REPO_ROOT to verify EVERY referenced local file as well.
Graph verification alone does not validate the source bytes or claim support.
"""
import argparse
import hashlib
import json
from pathlib import Path

p = argparse.ArgumentParser()
p.add_argument('manifest', type=Path)
p.add_argument('--files', type=Path)
a = p.parse_args()
dag = json.loads(a.manifest.read_text(encoding='utf-8'))
assert dag['schema'] == 'bgt-merkle-dag-v1'
nodes = dag['nodes']
for cid, node in nodes.items():
    raw = json.dumps(node, sort_keys=True, ensure_ascii=False, separators=(',', ':')).encode('utf-8')
    assert hashlib.sha256(b'bgt-evidence-v1\0' + raw).hexdigest() == cid, f'Bad node {cid}'
    assert all(link in nodes for link in node['links']), f'Dangling link in {cid}'
visiting, visited = set(), set()


def walk(cid):
    assert cid not in visiting, 'Cycle detected'
    if cid in visited:
        return
    visiting.add(cid)
    for link in nodes[cid]['links']:
        walk(link)
    visiting.remove(cid)
    visited.add(cid)


walk(dag['root'])
assert len(visited) == len(nodes), 'Unreachable nodes'
files = [n for n in nodes.values() if n['type'] == 'file']
if a.files:
    root = a.files.resolve()
    for node in files:
        path = (root / node['path']).resolve()
        assert path.is_relative_to(root), 'Path escapes archive'
        data = path.read_bytes()
        assert len(data) == node['bytes'], f'File size mismatch: {path}'
        assert hashlib.sha256(data).hexdigest() == node['sha256'], f'File hash mismatch: {path}'
print(json.dumps({'status':'PASS', 'root':dag['root'], 'nodes':len(nodes),
                  'graph_hashes_links_reachability_acyclicity':'verified',
                  'local_file_bytes':f'{len(files)} verified' if a.files else 'NOT CHECKED; supply --files',
                  'claim_truth':'Not established by hashing.'}, indent=2))
