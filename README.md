# CCNA Home Lab

Personal CCNA 200-301 exam preparation lab. Built on physical hardware (same devices as [Homelab_Router-on-a-Stick](https://github.com/Aj-Networks/Homelab_Router-on-a-Stick)) but logically isolated for focused study.

## Purpose

Each topic lives in its own numbered folder at the root of this repo. One folder, one topic, one writeup. No jumping between separate notes, labs, and diagram trees. Everything about a topic is in that topic's folder.

## Structure

```
├── 00-template-topic/            # Copy this folder to start a new topic
│   └── README.md
├── NN-topic-slug/                # One per lab or concept
│   ├── README.md                 # Writeup: concept, lab, sources, comments, lessons
│   ├── topology.drawio           # Optional: your own topology source
│   ├── topology.svg              # Optional: exported diagram
│   ├── lab.pka                   # Optional: your own Packet Tracer file
│   └── config-r1.txt             # Optional: config snippets or screenshots
├── docs/
│   └── sync_audits/              # Repo reconciliation history
├── LICENSE
└── README.md
```

## How to add a new topic

1. Copy `00-template-topic/` to a new folder named `NN-topic-slug/` (two-digit number, hyphen, lowercase slug). Example: `11-ipv4-addressing/`.
2. Fill in each section of its README.
3. Drop related files (topology, PT file, config snippet, screenshots) directly inside the same folder.
4. Commit with a short specific message, e.g. `add 11 ipv4-addressing lab writeup`.

Note: `.pka`, `.pkt`, and other binary lab formats are globally ignored in [.gitignore](.gitignore). To publish your own `.pka` for a specific topic, add an exception line such as `!11-ipv4-addressing/lab.pka`.

## Numbering convention

Numbers follow Cisco NetAcad module order as a sort prefix only, not a deep hierarchy. Example: `11-ipv4-addressing`, `20-vpn-tunneling`. Familiar order, no replication of the full `1.1.1.5` scheme.

## Progress Tracking

| Course | Modules | Status |
|--------|---------|--------|
| ITN (v7) | 1-17 | Not started |
| SRWE (v7) | 1-16 | Not started |
| ENSA (v7) | 1-12 | Not started |

## Resources (Local Only)

Full Cisco NetAcad course materials (PDFs, Packet Tracer `.pka`, instructor labs, PowerPoints) are stored locally in `local_materials/`, **excluded from git** due to copyright.

## Disclaimer

No copyrighted Cisco NetAcad PDFs, Packet Tracer activities, instructor materials, or third-party course content are redistributed in this repository. Those materials are referenced by module number only and are kept outside the git tree.

## License

Released under the MIT License. See [LICENSE](LICENSE).
This repository is a personal study project. It is not affiliated with, endorsed by, or sponsored by Cisco Systems or Cisco Networking Academy.
