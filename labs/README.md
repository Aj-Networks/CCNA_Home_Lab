# Labs

Hands-on CCNA labs built in Cisco Packet Tracer. The tree is split into two subtrees so visitors can jump straight to what they want:

- **[cisco/](cisco/)** — labs that mirror Cisco NetAcad curriculum topics. Topology, lab name, and module number follow Cisco's scheme. All Packet Tracer files inside are REBUILT from scratch in my own PT instance; no Cisco-authored lab files are redistributed.
- **[custom/](custom/)** — original labs: my own topologies, production-inspired scenarios, and troubleshooting puzzles. Not part of Cisco's curriculum.

## What is in each lab folder

| File | Purpose |
|------|---------|
| `README.md` | The writeup. GitHub renders it when you browse the folder. |
| `index.html` | Standalone browser version of the same content; works offline. |
| `lab.pka` | My rebuilt Packet Tracer file. Optional; some labs are config-only. |
| `topology.svg` / `topology.drawio` | Network diagram export plus editable source. |
| `config-*.txt` | Per-device config snippets you can copy-paste. |
| `screenshots/` | Optional lab-mode captures for the demonstration sections. |

## Starting a new lab

1. Copy `labs/00-template/` to `labs/cisco/NN-topic-slug/` or `labs/custom/NN-topic-slug/`.
2. Fill each section of its `README.md`.
3. Build the topology in Packet Tracer, save as `lab.pka` in the same folder.
4. Export your diagram as `topology.svg`.
5. (Optional) Generate `index.html` from the Markdown so viewers who prefer a styled browser view get one.
6. Commit with one short, specific message per logical change.

## Numbering convention

Each subtree is independent. Cisco subtree uses Cisco module order as a sort prefix (see [cisco/README.md](cisco/README.md)). Custom subtree starts at `01` and increments as you add labs.
