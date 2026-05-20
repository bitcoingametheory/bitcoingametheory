# Vanity Address Generator

A small command-line tool that generates a custom-prefix ("vanity") Bitcoin
address, for example `1exit...` or `1Love...`.

## Why this exists

Bitcoin Game Theory signs its papers and public statements with a Bitcoin
private key. A signed message proves a document came from the holder of a
specific address, with no trusted third party in the middle.

A vanity address makes that signing address recognizable: a reader can see
at a glance that an address beginning `1exit...` belongs to this project.
This tool produces such an address. It is published here so anyone can read
exactly how it works and generate their own.

## How it works

The tool generates random Bitcoin keypairs and keeps the first one whose
address starts with the characters you chose. Every extra character is
about 58 times harder to find, so short prefixes are instant and long ones
are slow. It runs entirely on your machine. Nothing is uploaded, and the
private key is shown only in your own terminal.

## Use it

```
bash simple-vanity-generator.sh
```

On the first run it compiles the underlying grinder (vanitygen-plusplus,
https://github.com/10gic/vanitygen-plusplus) into your local cache. After
that it asks for the characters you want after the leading `1`, explains
the time cost, and prints the resulting address and private key.

Rough difficulty on a mid-range GPU:

| Prefix length | Time |
| --- | --- |
| 1 to 4 characters | instant, a few seconds |
| 5 characters | seconds to minutes |
| 6 characters | minutes to hours |
| 7 characters | many days to weeks |
| 8 or more characters | impractical |

A CPU is far slower than a GPU. On a CPU, stay at 5 characters or fewer.

Case matters. `Exit`, `exit` and `EXIT` are three different targets.
Matching an exact capitalization is the hardest; allowing any
capitalization is much faster.

The characters `0` (zero), `O` (capital o), `I` (capital i) and `l`
(lowercase L) never appear in a Bitcoin address. They were removed from the
alphabet because they look alike.

## Storing the private key

The tool prints a private key in WIF form, a string starting with `K`, `L`
or `5`. That string is the wallet. There is no seed phrase behind it.

- Write the WIF on paper, by hand. Store the paper somewhere safe.
- Do not keep it in a chat, an email, a screenshot, or a synced note.
- Anyone who holds the WIF controls the address. Treat it like a password.

## Signing messages with Electrum

The vanity key is a single private key, so it needs a wallet that can
import one. Sparrow and most hardware wallets cannot. Electrum can.

1. Install Electrum from https://electrum.org and open it.
2. Create a new wallet. For the wallet type, choose
   **Import Bitcoin addresses or private keys**.
3. In the key box, type `p2pkh:` and then paste your WIF directly after it,
   with no space, for example `p2pkh:L1aA...`. The `p2pkh:` prefix is
   required. Without it Electrum derives a different address that does not
   match your vanity address.
4. Set a password. This encrypts the wallet file on disk.
5. To sign a message, open **Tools, Sign/Verify Message**, enter your
   address and the text, and click **Sign**. The signature it produces can
   be checked by anyone with the address and the text.

## Warning: software wallet, vanity signing only

This is a software-only approach. The private key is generated and kept on
an ordinary computer, not a hardware wallet. A software key is exposed to
malware, disk backups, and screen capture in ways a hardware wallet key is
not.

Use an address from this tool only for signing, and only with a wallet
that holds no bitcoin. Do not send funds to it. It is an identity and
signing key, not a place to store money. For any address that will ever
hold a balance, use a hardware wallet.
