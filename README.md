# EVB-BR

## Setup Instructions

### Install git-xet

Make sure git-xet is installed (see [hf.co/docs/hub/git-xet](https://hf.co/docs/hub/git-xet) for more details):

```bash
brew tap huggingface/tap
brew install git-xet
git xet install
```

### Clone the HuggingFace Space

Clone the repository from HuggingFace:

```bash
git clone https://huggingface.co/spaces/mmrech/evb-br
```

#### Clone without large files (optional)

If you want to clone without large files - just their pointers:

```bash
GIT_LFS_SKIP_SMUDGE=1 git clone https://huggingface.co/spaces/mmrech/evb-br
```