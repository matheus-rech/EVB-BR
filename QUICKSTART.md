# Quick Start Guide - EVB-BR Setup

This is a quick reference for setting up the EVB-BR repository with content from HuggingFace.

## What's Been Done

✅ Git-xet installation instructions provided  
✅ Automated setup script created (`clone_and_setup.sh`)  
✅ Comprehensive documentation added  
✅ GitHub Actions workflow for automated syncing  
✅ .gitignore configured  

## What You Need to Do

### Step 1: Install git-xet on Your Machine

Choose your platform:

**macOS:**
```bash
brew tap huggingface/tap
brew install git-xet
git xet install
```

**Linux:**
```bash
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/huggingface/xet-core/refs/heads/main/git_xet/install.sh | sh
git xet install
```

### Step 2: Clone This Repository

```bash
git clone https://github.com/matheus-rech/EVB-BR.git
cd EVB-BR
```

### Step 3: Run the Setup Script

```bash
./clone_and_setup.sh
```

This will:
1. Verify git-xet is installed
2. Clone the HuggingFace Space (https://huggingface.co/spaces/mmrech/evb-br)
3. Copy all files to this repository
4. Show you the next steps

### Step 4: Review and Commit

```bash
# Check what was copied
git status

# Review the files
ls -la

# Add and commit
git add .
git commit -m "Import codebase from HuggingFace Space"

# Push to GitHub
git push origin main
```

## Alternative: Manual Setup

If you prefer not to use the automated script, follow the instructions in [SETUP.md](SETUP.md).

## Troubleshooting

### git-xet not found
- Make sure you've run the installation commands
- Check if git-xet is in your PATH: `which git-xet`
- See [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md) for detailed troubleshooting

### Clone fails
- Check your internet connection
- Verify the HuggingFace Space URL is correct
- Ensure you have access to the repository (if private)

### Permission errors
- Make sure the script is executable: `chmod +x clone_and_setup.sh`
- You might need sudo for some installations

## What's Included

- **clone_and_setup.sh** - Automated setup script
- **SETUP.md** - Detailed manual setup instructions
- **GIT_XET_GUIDE.md** - Complete git-xet installation and usage guide
- **CONTRIBUTING.md** - Guidelines for contributing to this repository
- **README.md** - Main repository documentation
- **.github/workflows/sync-from-huggingface.yml** - GitHub Actions for automated syncing

## Need Help?

1. Check the documentation files mentioned above
2. Review the troubleshooting section in [GIT_XET_GUIDE.md](GIT_XET_GUIDE.md)
3. Open an issue in this repository

## Next Steps After Import

Once you've imported the HuggingFace Space content:

1. **Review the imported files** to understand the codebase
2. **Set up the development environment** (follow any README in the imported files)
3. **Configure automated syncing** using the GitHub Actions workflow
4. **Keep the repository up to date** by periodically running the sync

## Resources

- [HuggingFace Space: mmrech/evb-br](https://huggingface.co/spaces/mmrech/evb-br)
- [Git-Xet Documentation](https://huggingface.co/docs/hub/git-xet)
- [HuggingFace Hub Docs](https://huggingface.co/docs/hub/index)

---

**Note:** The automated setup requires that you run it from your local machine or a machine with access to HuggingFace. The GitHub Actions environment has been configured but may need HuggingFace authentication tokens for private repositories.
