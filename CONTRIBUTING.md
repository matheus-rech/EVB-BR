# Contributing to EVB-BR

Thank you for your interest in contributing to EVB-BR!

## Repository Overview

This GitHub repository mirrors the codebase from the HuggingFace Space located at:
https://huggingface.co/spaces/mmrech/evb-br

## Getting Started

### Prerequisites

1. **Git** - Standard Git installation
2. **Git-Xet** - Required for cloning from HuggingFace

Install git-xet following the instructions in [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md)

### Setting Up the Repository

#### Option 1: Automated Setup (Recommended)

Run the provided setup script:

```bash
./clone_and_setup.sh
```

#### Option 2: Manual Setup

See [SETUP.md](SETUP.md) for step-by-step manual instructions.

## Workflow

### Initial Import from HuggingFace

1. Install git-xet (see [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md))
2. Clone the HuggingFace Space
3. Copy files to this repository
4. Commit and push changes

### Keeping in Sync

#### Manual Sync

```bash
# Clone the latest from HuggingFace
cd /tmp
git clone https://huggingface.co/spaces/mmrech/evb-br evb-br-latest

# Copy to your local repository
cd /path/to/EVB-BR
rsync -av --exclude='.git' /tmp/evb-br-latest/ ./

# Commit changes
git add .
git commit -m "Sync from HuggingFace Space"
git push
```

#### Automated Sync (GitHub Actions)

The repository includes a GitHub Actions workflow (`.github/workflows/sync-from-huggingface.yml`) that can:
- Be manually triggered from the Actions tab
- Run on a schedule (weekly by default)

To trigger manually:
1. Go to the "Actions" tab in GitHub
2. Select "Sync from HuggingFace"
3. Click "Run workflow"

## Making Changes

### If You Want to Modify the Codebase

Since this repository mirrors a HuggingFace Space, consider where your changes should live:

1. **Changes to the HuggingFace Space**: Make changes in the original HuggingFace Space, then sync to this repository
2. **GitHub-specific changes**: Make changes here (e.g., CI/CD, GitHub-specific documentation)

### Repository Structure

```
EVB-BR/
├── .github/
│   └── workflows/          # GitHub Actions workflows
├── .gitignore              # Git ignore patterns
├── README.md               # Main documentation (this file)
├── SETUP.md                # Setup instructions
├── GIT_XET_GUIDE.md        # Git-Xet installation guide
├── CONTRIBUTING.md         # Contributing guidelines
├── clone_and_setup.sh      # Automated setup script
└── [Files from HuggingFace Space will be here]
```

## Questions or Issues?

If you encounter any issues:

1. Check [SETUP.md](SETUP.md) for detailed setup instructions
2. Review [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md) for git-xet troubleshooting
3. Open an issue in this repository

## Resources

- [HuggingFace Space](https://huggingface.co/spaces/mmrech/evb-br)
- [Git-Xet Documentation](https://huggingface.co/docs/hub/git-xet)
- [HuggingFace Hub Documentation](https://huggingface.co/docs/hub/index)
