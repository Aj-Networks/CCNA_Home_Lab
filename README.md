# CCNA Home Lab

Personal CCNA exam preparation lab. Built on physical hardware (same devices as [Homelab_Router-on-a-Stick](https://github.com/Aj-Networks/Homelab_Router-on-a-Stick)) but logically isolated for focused study.

## Purpose

This repository hosts original study notes, lab writeups, topology diagrams, config snippets, and automation scripts produced while preparing for the Cisco CCNA 200-301 certification. Everything here is written from scratch and reflects personal interpretation of the material.

## Using this repository

Clone or download the repo and browse `docs/` for notes and lab writeups. Topology sources live under `docs/topologies/` (drawio and svg). Configuration snippets live under `configs/`. Automation helpers live under `scripts/`.

## Structure

```
├── docs/
│   ├── study-notes/      # Personal markdown notes per module/topic
│   ├── lab-summaries/    # Lab writeups with configs, outputs, lessons
│   ├── cheatsheets/      # Quick-reference cards (subnetting, CLI, etc.)
│   ├── topologies/       # Network diagrams (drawio, svg, png)
│   └── sync_audits/      # Repo audit reports (local vs remote reconciliation)
├── configs/              # Reusable config snippets (router, switch, WLAN)
├── scripts/              # Automation helpers (backup, deploy, test)
├── progress/             # Tracking: CSV/JSON for module completion
└── screenshots/          # Lab evidence screenshots
```

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
