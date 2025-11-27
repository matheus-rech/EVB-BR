# EVB-BR

This repository hosts the codebase from the HuggingFace Space: [mmrech/evb-br](https://huggingface.co/spaces/mmrech/evb-br)

## Quick Start

To clone and import the HuggingFace Space codebase to this repository, follow these steps:

### 1. Install git-xet

Git-xet is required to efficiently handle large files when cloning from HuggingFace.

**For macOS:**
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

### 2. Run the Setup Script

```bash
./clone_and_setup.sh
```

This automated script will:
- Verify git-xet installation
- Clone the HuggingFace Space repository
- Copy all files to this repository
- Provide next steps for committing changes

### Manual Setup

If you prefer to do this manually, see [SETUP.md](SETUP.md) for detailed instructions.

## Documentation

- [SETUP.md](SETUP.md) - Detailed setup instructions
- [HuggingFace git-xet Documentation](https://huggingface.co/docs/hub/git-xet)
- [Original HuggingFace Space](https://huggingface.co/spaces/mmrech/evb-br)