# CCNA Home Lab

Personal CCNA 200-301 exam preparation lab. Built on physical hardware (same devices as [Homelab_Router-on-a-Stick](https://github.com/Aj-Networks/Homelab_Router-on-a-Stick)) but logically isolated for focused study.

## Purpose

Hands-on CCNA practice, published so other learners can follow along. Each lab is self-contained in its own folder with a writeup, topology, and (where applicable) a rebuilt Packet Tracer file.

## Where to start

The entire learning content lives under [`labs/`](labs/). Two subtrees:

- **[labs/cisco/](labs/cisco/)** — labs that mirror Cisco NetAcad curriculum topics (ITN, SRWE, ENSA). Topology and lab names follow Cisco's scheme. Packet Tracer files are rebuilt from scratch; no Cisco-authored files are redistributed.
- **[labs/custom/](labs/custom/)** — original labs: my own topologies, production-inspired scenarios, troubleshooting puzzles.

See [`labs/README.md`](labs/README.md) for the full navigation guide and how each lab folder is structured.

## Repo layout

```
├── labs/
│   ├── 00-template/            # Copy this folder to start a new lab
│   │   └── README.md
│   ├── cisco/                  # Cisco curriculum rebuilds
│   │   ├── README.md
│   │   └── 30-site-to-site-ipsec-vpn/
│   │       ├── README.md       # Writeup (GitHub renders this)
│   │       ├── index.html      # Standalone browser version
│   │       ├── lab.pka         # Optional: my rebuilt Packet Tracer file
│   │       └── topology.svg    # Optional: diagram
│   └── custom/                 # Original labs (empty for now)
│       └── README.md
├── docs/
│   └── sync_audits/            # Repo reconciliation history
├── LICENSE
├── README.md
├── .gitattributes
└── .gitignore
```

## How to add a new lab

1. Copy `labs/00-template/` to `labs/cisco/NN-topic-slug/` or `labs/custom/NN-topic-slug/`.
2. Fill each section of the new `README.md` (What is this, Prerequisites, Topology, Steps, Verification, Sources, Comments, Lessons learned).
3. Build the topology in Packet Tracer, save as `lab.pka` in the same folder. The `.gitignore` carves an exception for `lab.pka` under `labs/**` so it tracks.
4. Export your diagram as `topology.svg`.
5. (Optional) Generate `index.html` from the Markdown so a styled browser version is available.
6. Commit with short, specific messages (one per logical change).

## Progress Tracking

| Course | Modules | Status |
|--------|---------|--------|
| ITN (v7) | 1-17 | Not started |
| SRWE (v7) | 1-16 | Not started |
| ENSA (v7) | 1-12 | In progress (lab 30 writeup done) |

## Resources (Local Only)

Full Cisco NetAcad course materials (PDFs, Packet Tracer `.pka`, instructor labs, PowerPoints) are stored locally in `local_materials/`, **excluded from git** due to copyright.

## Disclaimer

No copyrighted Cisco NetAcad PDFs, Packet Tracer activities, instructor materials, or third-party course content are redistributed in this repository. Those materials are referenced by module number only and are kept outside the git tree.

## License

Released under the MIT License. See [LICENSE](LICENSE).
This repository is a personal study project. It is not affiliated with, endorsed by, or sponsored by Cisco Systems or Cisco Networking Academy.
