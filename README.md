# EVB-BR

## Setup Instructions

### Install git-xet

Make sure git-xet is installed (see [hf.co/docs/hub/git-xet](https://hf.co/docs/hub/git-xet) for more details).

#### macOS

```bash
brew tap huggingface/tap
brew install git-xet
git xet install
```

#### Linux / Windows

For installation instructions on other operating systems, please refer to the [official git-xet documentation](https://hf.co/docs/hub/git-xet).

### Clone the HuggingFace Space

Clone the repository from HuggingFace:

```bash
git clone https://huggingface.co/spaces/mmrech/evb-br
```

#### Clone without large files (optional)

If you want to clone without large files - just their pointers (useful for faster clone times and reduced disk usage when you don't need the large files immediately):

```bash
GIT_LFS_SKIP_SMUDGE=1 git clone https://huggingface.co/spaces/mmrech/evb-br
```

Note: With this option, large files will appear as pointer files until you explicitly fetch them using Git LFS.