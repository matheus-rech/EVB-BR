# EVB-BR Workflow Diagram

## Setup and Sync Workflow

```
┌─────────────────────────────────────────────────────────────────┐
│                     HuggingFace Space                           │
│         https://huggingface.co/spaces/mmrech/evb-br             │
│                                                                 │
│  Contains: Models, Datasets, Application Code, Large Files     │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │ Clone with git-xet
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                    Your Local Machine                           │
│                                                                 │
│  1. Install git-xet                                             │
│  2. Run: ./clone_and_setup.sh                                   │
│  3. Review imported files                                       │
│  4. Commit and push to GitHub                                   │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │ Git push
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                    GitHub Repository                            │
│              https://github.com/matheus-rech/EVB-BR             │
│                                                                 │
│  Contains:                                                      │
│  • Setup scripts and documentation                              │
│  • Imported HuggingFace Space code                              │
│  • GitHub Actions for automated syncing                         │
└─────────────────────────────────────────────────────────────────┘
                              │
                              │ GitHub Actions (optional)
                              │ Scheduled or manual trigger
                              ▼
┌─────────────────────────────────────────────────────────────────┐
│                  Automated Sync Process                         │
│                                                                 │
│  • Runs in GitHub Actions environment                           │
│  • Clones latest from HuggingFace                               │
│  • Detects changes                                              │
│  • Commits and pushes updates automatically                     │
└─────────────────────────────────────────────────────────────────┘
```

## File Structure After Setup

```
EVB-BR/
│
├── 📁 .github/
│   └── 📁 workflows/
│       └── sync-from-huggingface.yml    ← GitHub Actions workflow
│
├── 📄 .gitignore                        ← Git ignore patterns
│
├── 📄 README.md                         ← Main documentation
├── 📄 QUICKSTART.md                     ← Quick reference guide
├── 📄 SETUP.md                          ← Detailed setup instructions
├── 📄 SETUP_SUMMARY.md                  ← Setup overview
├── 📄 GIT_XET_GUIDE.md                  ← Git-xet guide
├── 📄 CONTRIBUTING.md                   ← Contributing guidelines
├── 📄 WORKFLOW.md                       ← This file
│
├── 🔧 clone_and_setup.sh                ← Automated setup script
│
└── 📦 [HuggingFace Space Files]         ← Imported after running setup
    ├── app.py (example)
    ├── requirements.txt (example)
    ├── models/ (example)
    └── ... (other files from HuggingFace)
```

## Setup Process Flow

```
START
  │
  ├─► Install git-xet on your machine
  │   │
  │   ├─► macOS: brew tap huggingface/tap && brew install git-xet
  │   └─► Linux: curl ... | sh
  │
  ├─► Clone this GitHub repository
  │   └─► git clone https://github.com/matheus-rech/EVB-BR.git
  │
  ├─► Run automated setup script
  │   └─► ./clone_and_setup.sh
  │       │
  │       ├─► Checks git-xet installation
  │       ├─► Clones HuggingFace Space to /tmp
  │       ├─► Copies files to current directory
  │       └─► Displays next steps
  │
  ├─► Review imported files
  │   └─► git status && ls -la
  │
  ├─► Commit and push changes
  │   └─► git add . && git commit -m "..." && git push
  │
  └─► DONE - Repository is set up!
      │
      └─► Optional: Configure GitHub Actions for auto-sync
```

## Sync Strategies

### Strategy 1: Manual Sync (Recommended for initial setup)
```
Local Machine → Run clone_and_setup.sh → Review → Commit → Push to GitHub
```

### Strategy 2: Automated Sync (For ongoing updates)
```
GitHub Actions → Scheduled/Manual Trigger → Clone HuggingFace → Auto-commit → GitHub Repo Updated
```

### Strategy 3: Hybrid Approach
```
• Use manual sync for major updates and review
• Use automated sync for routine synchronization
• Monitor GitHub Actions runs for any issues
```

## Key Components

### 1. Git-Xet
- **Purpose**: Efficiently handle large files from HuggingFace
- **Required**: Yes, for cloning HuggingFace Spaces
- **Installation**: One-time setup on your machine

### 2. Setup Script (clone_and_setup.sh)
- **Purpose**: Automate the cloning and copying process
- **When to use**: First time setup and manual syncs
- **Safe to run**: Multiple times (non-destructive)

### 3. GitHub Actions Workflow
- **Purpose**: Automated syncing from HuggingFace
- **When to use**: Keep repository in sync automatically
- **Customizable**: Schedule and triggers can be adjusted

### 4. Documentation Files
- **Purpose**: Comprehensive guides for all aspects
- **Coverage**: Installation, setup, usage, troubleshooting
- **Always available**: In the repository for reference

## Common Scenarios

### Scenario 1: First Time User
```
1. Read QUICKSTART.md
2. Install git-xet
3. Run clone_and_setup.sh
4. Review and commit
```

### Scenario 2: Regular Contributor
```
1. Check for HuggingFace updates
2. Run clone_and_setup.sh or trigger GitHub Actions
3. Review changes
4. Commit if manual, or auto-committed if GitHub Actions
```

### Scenario 3: CI/CD Integration
```
1. Configure GitHub Actions workflow
2. Set schedule or manual triggers
3. Monitor automated runs
4. Review automated commits
```

## Troubleshooting Flow

```
Problem Encountered?
  │
  ├─► git-xet not found?
  │   └─► See GIT_XET_GUIDE.md → Installation section
  │
  ├─► Clone fails?
  │   └─► See SETUP.md → Troubleshooting section
  │
  ├─► Permission errors?
  │   └─► chmod +x clone_and_setup.sh
  │
  ├─► GitHub Actions fails?
  │   └─► Check Actions tab → View logs → Fix issues
  │
  └─► Other issues?
      └─► See CONTRIBUTING.md → Support section
```

## Best Practices

1. **Always backup** before major syncs
2. **Review changes** before committing
3. **Test locally** before pushing to GitHub
4. **Monitor GitHub Actions** if using automation
5. **Keep documentation** updated
6. **Document changes** in commit messages
7. **Use branches** for experimental changes

## Resources Quick Links

- 📖 [QUICKSTART.md](QUICKSTART.md) - Get started immediately
- 📋 [SETUP_SUMMARY.md](SETUP_SUMMARY.md) - Overview of setup
- 🔧 [SETUP.md](SETUP.md) - Detailed instructions
- 🛠️ [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md) - Git-xet guide
- 🤝 [CONTRIBUTING.md](CONTRIBUTING.md) - Contributing guidelines
- 🌐 [HuggingFace Space](https://huggingface.co/spaces/mmrech/evb-br)

---

**Note**: This workflow assumes you have access to HuggingFace and the necessary permissions for the Space repository.
