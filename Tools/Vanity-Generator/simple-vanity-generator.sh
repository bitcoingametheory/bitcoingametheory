#!/usr/bin/env bash
#
# simple-vanity-generator — make a custom-prefix ("vanity") Bitcoin address.
#
# A vanity address is an ordinary Bitcoin address whose opening characters
# you choose, e.g. 1Love... . This tool grinds random keypairs until one
# produces an address that matches your prefix.
#
# It runs entirely on your machine. Nothing is uploaded. The private key is
# printed only to your terminal. The key it produces is a brand-new,
# standalone key — write it down or it is lost.
#
# A bitcoingametheory.com open-source tool.
# Grinder: vanitygen-plusplus — https://github.com/10gic/vanitygen-plusplus

set -euo pipefail

CACHE="${XDG_CACHE_HOME:-$HOME/.cache}/simple-vanity-generator"
VPP="$CACHE/vanitygen-plusplus"

# --- find the grinder, building it on first run ----------------------------
grinder=""
for g in oclvanitygen++ vanitygen++; do
  if command -v "$g" >/dev/null 2>&1; then grinder="$g"; break; fi
  if [[ -x "$VPP/$g" ]]; then grinder="$VPP/$g"; break; fi
done

if [[ -z "$grinder" ]]; then
  echo "First run: the vanity grinder needs to be compiled."
  echo "It will be built locally in: $VPP"
  printf 'Build it now? [y/N] '
  read -r ans
  [[ "$ans" =~ ^[Yy]$ ]] || { echo "Cannot continue without the grinder."; exit 1; }
  for tool in git make cc; do
    command -v "$tool" >/dev/null || { echo "Missing build tool: $tool"; exit 1; }
  done
  mkdir -p "$CACHE"
  [[ -d "$VPP" ]] || git clone --depth 1 https://github.com/10gic/vanitygen-plusplus "$VPP"
  if ! ( cd "$VPP" && make ); then
    echo
    echo "Build failed — install the dependencies and run this script again:"
    echo "  Debian/Ubuntu : sudo apt install build-essential libssl-dev libpcre3-dev"
    echo "  Fedora        : sudo dnf install gcc make openssl-devel pcre-devel"
    echo "  macOS         : brew install openssl pcre"
    exit 1
  fi
  grinder="$VPP/vanitygen++"
fi

# --- explain the cost before asking ----------------------------------------
cat <<'GUIDE'

============================================================
  SIMPLE VANITY GENERATOR
============================================================
A Bitcoin address starts with "1". You choose the characters
that come next.

Every extra character is roughly 58x harder to find. Rough
guide on a mid-range GPU:

    1-4 characters    instant, a few seconds
    5 characters      seconds to minutes
    6 characters      minutes to hours
    7 characters      many days to weeks
    8+ characters     impractical

A CPU is far slower than a GPU. On a CPU, stay at 5 or fewer.

CASE MATTERS. "Exit", "exit" and "EXIT" are three different
targets. An exact capitalization is the hardest to hit;
allowing any capitalization is much faster.

These characters never appear in a Bitcoin address — they were
removed because they look alike:
    0 (zero)   O (capital o)   I (capital i)   l (lower L)
============================================================

GUIDE

# --- ask for the pattern ---------------------------------------------------
printf 'Characters you want after the "1" (e.g. Love): '
read -r want
[[ -n "$want" ]] || { echo "Nothing entered. Aborting."; exit 1; }

if printf '%s' "$want" | grep -q '[0OIl]'; then
  echo "That contains 0, O, I, or l — those cannot appear in any Bitcoin"
  echo "address. Pick letters without them and run again."
  exit 1
fi
if ! printf '%s' "$want" | grep -qE '^[1-9A-HJ-NP-Za-km-z]+$'; then
  echo "Only letters and digits from Bitcoin's base58 alphabet are allowed"
  echo "(no spaces or symbols). Run again with a different prefix."
  exit 1
fi

printf 'Match ANY capitalization? It is much faster. [y/N] '
read -r anycase
caseflag=""
[[ "$anycase" =~ ^[Yy]$ ]] && caseflag="-i"

target="1$want"
echo
echo "Searching for an address that begins:  $target"
echo "A live time estimate appears below. Press Ctrl-C to give up."
echo

# --- grind -----------------------------------------------------------------
# Capture stdout (the result); stderr (live speed/estimate) streams to the
# terminal. Capturing also contains the upstream grinder's occasional
# harmless exit-time crash, so the script always reaches a clean result.
out=$("$grinder" -F compressed -1 $caseflag "$target") || true
address=$(printf '%s\n' "$out" | grep -m1 '^Address:' | awk '{print $2}')
privkey=$(printf '%s\n' "$out" | grep -m1 '^Privkey:' | awk '{print $2}')

if [[ -z "$address" || -z "$privkey" ]]; then
  echo
  echo "No address was produced — the search was interrupted, or the"
  echo "grinder failed. Run the script again."
  exit 1
fi

cat <<RESULT

============================================================
  FOUND IT
============================================================
  Address  (public — safe to share):

      $address

  Private key / WIF  (SECRET):

      $privkey

  Write the private key on paper now. Anyone who holds it
  controls the address. This tool saves no copy anywhere.
============================================================
RESULT
