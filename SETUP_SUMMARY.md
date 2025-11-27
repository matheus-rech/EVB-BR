# EVB-BR Setup Summary

## Overview

This repository has been configured to clone and host the codebase from the HuggingFace Space at:
**https://huggingface.co/spaces/mmrech/evb-br**

## What Has Been Set Up

### 1. Documentation Files

| File | Purpose |
|------|---------|
| **README.md** | Main repository documentation with quick start guide |
| **QUICKSTART.md** | Step-by-step quick reference guide |
| **SETUP.md** | Detailed manual setup instructions |
| **GIT_XET_GUIDE.md** | Comprehensive git-xet installation and usage guide |
| **CONTRIBUTING.md** | Guidelines for contributing to this repository |
| **SETUP_SUMMARY.md** | This file - overview of the setup |

### 2. Automation Scripts

- **clone_and_setup.sh** - Automated bash script that:
  - Checks for git-xet installation
  - Clones the HuggingFace Space repository
  - Copies files to this GitHub repository
  - Provides next steps for committing changes
  - *Executable and ready to use*

### 3. GitHub Actions Workflow

- **.github/workflows/sync-from-huggingface.yml** - Automated syncing workflow that:
  - Can be manually triggered from GitHub Actions tab
  - Can run on a schedule (weekly by default)
  - Automatically clones from HuggingFace
  - Commits and pushes changes if updates are detected

### 4. Configuration Files

- **.gitignore** - Configured to exclude:
  - Python artifacts (`__pycache__`, `*.pyc`, etc.)
  - Node modules
  - Virtual environments
  - IDE files
  - OS-specific files
  - Log files and temporary files

## How to Use This Setup

### First Time Setup (On Your Local Machine)

1. **Install git-xet** (required):
   ```bash
   # macOS
   brew tap huggingface/tap && brew install git-xet && git xet install
   
   # Linux
   curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/huggingface/xet-core/refs/heads/main/git_xet/install.sh | sh && git xet install
   ```

2. **Clone this repository**:
   ```bash
   git clone https://github.com/matheus-rech/EVB-BR.git
   cd EVB-BR
   ```

3. **Run the setup script**:
   ```bash
   ./clone_and_setup.sh
   ```

4. **Review and commit**:
   ```bash
   git status
   git add .
   git commit -m "Import codebase from HuggingFace Space"
   git push origin main
   ```

### Keeping Repository in Sync

**Option A: Manual Sync**
```bash
./clone_and_setup.sh
git add .
git commit -m "Sync from HuggingFace Space"
git push
```

**Option B: Automated Sync (GitHub Actions)**
1. Go to GitHub repository → Actions tab
2. Select "Sync from HuggingFace" workflow
3. Click "Run workflow"

**Option C: Scheduled Sync**
The workflow is configured to run weekly automatically (can be customized)

## Important Notes

### Environment Limitations

⚠️ **The automated setup cannot be run in this CI/CD environment** because:
- HuggingFace domain access is restricted in the sandbox
- The script is designed to run on your local machine or a machine with internet access

### Git-Xet Requirement

Git-xet is **required** because:
- The HuggingFace Space may contain large files (models, datasets)
- Git-xet efficiently handles large file transfers
- It provides deduplication and optimization
- It's the recommended tool by HuggingFace for cloning Spaces

### Repository Structure

After running the setup script, your repository will contain:
```
EVB-BR/
├── .github/
│   └── workflows/
│       └── sync-from-huggingface.yml
├── .gitignore
├── README.md
├── QUICKSTART.md
├── SETUP.md
├── GIT_XET_GUIDE.md
├── CONTRIBUTING.md
├── SETUP_SUMMARY.md
├── clone_and_setup.sh
└── [Files from HuggingFace Space]
```

## Troubleshooting

### Common Issues

1. **git-xet not found**
   - Ensure git-xet is installed and in your PATH
   - See [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md) for detailed installation

2. **Permission denied on clone_and_setup.sh**
   - Run: `chmod +x clone_and_setup.sh`

3. **Clone fails**
   - Check internet connection
   - Verify HuggingFace URL is correct
   - For private repositories, ensure you have access

4. **GitHub Actions workflow fails**
   - May need HuggingFace authentication token for private repos
   - Check workflow logs in Actions tab

## Next Steps

1. ✅ Read [QUICKSTART.md](QUICKSTART.md) for immediate next steps
2. ✅ Install git-xet on your local machine
3. ✅ Run `./clone_and_setup.sh` to import the codebase
4. ✅ Review the imported files
5. ✅ Set up your development environment based on the imported code
6. ✅ Configure GitHub Actions workflow for automated syncing (optional)

## Support

For questions or issues:
1. Check the documentation files listed above
2. Review [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md) for troubleshooting
3. Visit [HuggingFace documentation](https://huggingface.co/docs/hub/git-xet)
4. Open an issue in this repository

## References

- **HuggingFace Space**: https://huggingface.co/spaces/mmrech/evb-br
- **Git-Xet Documentation**: https://huggingface.co/docs/hub/git-xet
- **Git-Xet GitHub**: https://github.com/huggingface/xet-core
- **HuggingFace Hub**: https://huggingface.co/docs/hub/index

---

**Last Updated**: November 27, 2025  
**Repository**: https://github.com/matheus-rech/EVB-BR
