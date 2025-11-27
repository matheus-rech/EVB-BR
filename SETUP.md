# Setup Instructions for EVB-BR

This repository is intended to host the codebase from HuggingFace Spaces.

## Prerequisites

### Install git-xet

Git-xet is required to efficiently handle large files when cloning from HuggingFace.

**For macOS (using Homebrew):**
```bash
brew tap huggingface/tap
brew install git-xet
git xet install
```

**For Linux:**
```bash
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/huggingface/xet-core/refs/heads/main/git_xet/install.sh | sh
git xet install
```

**For Windows:**
Download the latest release from [huggingface/xet-core releases](https://github.com/huggingface/xet-core/releases)

## Cloning the HuggingFace Space

Once git-xet is installed, you can clone the HuggingFace Space repository:

```bash
git clone https://huggingface.co/spaces/mmrech/evb-br
```

## Importing to this GitHub Repository

After cloning the HuggingFace Space, you can copy the files to this repository:

```bash
# Navigate to this repository
cd EVB-BR

# Copy files from the cloned HuggingFace Space (excluding .git directory)
rsync -av --exclude='.git' /path/to/evb-br/ .

# Or manually copy specific files
cp -r /path/to/evb-br/* .

# Add and commit the files
git add .
git commit -m "Import codebase from HuggingFace Space"
git push origin main
```

## Alternative: Using the Setup Script

A setup script is provided to automate this process. Run:

```bash
./clone_and_setup.sh
```

This script will:
1. Check for git-xet installation
2. Clone the HuggingFace Space repository
3. Copy the files to this repository
4. Provide instructions for committing changes

## References

- [HuggingFace git-xet Documentation](https://huggingface.co/docs/hub/git-xet)
- [HuggingFace Space: mmrech/evb-br](https://huggingface.co/spaces/mmrech/evb-br)
- [git-xet GitHub Repository](https://github.com/huggingface/xet-core)
