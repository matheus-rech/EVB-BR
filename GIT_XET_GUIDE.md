# Git-Xet Installation and Usage Guide

## What is Git-Xet?

Git-Xet is a tool developed by HuggingFace that enables efficient handling of large files in Git repositories. It's particularly useful when working with HuggingFace Spaces and repositories that contain models, datasets, or other large assets.

## Installation

### macOS (via Homebrew)

```bash
brew tap huggingface/tap
brew install git-xet
git xet install
```

### Linux

```bash
curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/huggingface/xet-core/refs/heads/main/git_xet/install.sh | sh
git xet install
```

### Windows

1. Download the latest release from [GitHub Releases](https://github.com/huggingface/xet-core/releases)
2. Extract the archive
3. Add the binary to your PATH
4. Run `git xet install`

### Verification

Check if git-xet is installed correctly:

```bash
git-xet --version
```

## Basic Usage

### Cloning HuggingFace Repositories

Once git-xet is installed and configured, you can clone HuggingFace repositories normally:

```bash
# Clone a Space
git clone https://huggingface.co/spaces/username/space-name

# Clone a Model
git clone https://huggingface.co/username/model-name

# Clone a Dataset
git clone https://huggingface.co/datasets/username/dataset-name
```

### Configuration

Git-xet integrates with Git's configuration system:

```bash
# Install to global Git config
git xet install

# Check configuration
git config --global --list | grep xet
```

## Benefits

1. **Efficient Storage**: Handles large files efficiently without bloating the repository
2. **Deduplication**: Reduces storage by identifying and removing duplicate data
3. **Fast Transfers**: Optimizes download and upload speeds for large files
4. **Seamless Integration**: Works transparently with standard Git commands

## Troubleshooting

### git-xet command not found

Make sure the git-xet binary is in your PATH:

```bash
# Check if git-xet is in PATH
which git-xet

# If not, add to PATH (Linux/macOS)
export PATH="$HOME/.local/bin:$PATH"

# Make it permanent (add to ~/.bashrc or ~/.zshrc)
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
```

### Permission issues

If you get permission errors during installation:

```bash
# Linux: might need sudo for /usr/local/bin
sudo curl --proto '=https' --tlsv1.2 -sSf https://raw.githubusercontent.com/huggingface/xet-core/refs/heads/main/git_xet/install.sh | sudo sh
```

### Clone fails

If cloning fails, ensure:
1. Git is installed and up to date
2. You have internet connectivity
3. The repository URL is correct
4. You have access permissions (for private repositories)

## Resources

- [Official HuggingFace Documentation](https://huggingface.co/docs/hub/git-xet)
- [Git-Xet GitHub Repository](https://github.com/huggingface/xet-core)
- [HuggingFace Hub Documentation](https://huggingface.co/docs/hub/index)

## Common Commands

```bash
# Install git-xet globally
git xet install

# Check version
git-xet --version

# Get help
git-xet --help

# Clone a HuggingFace repository
git clone https://huggingface.co/spaces/mmrech/evb-br
```
