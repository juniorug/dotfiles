# 🛠 Dotfiles

Personal Zsh-based development environment for Linux and macOS.

This repository provides a clean, modular and reproducible shell setup using:

- Zsh
- Oh My Zsh
- Powerlevel10k
- Custom aliases and functions
- Git configuration
- Optional Fastfetch system info
- Python (pyenv) ready
- Java (SDKMAN) ready
- Docker-friendly workflow

The goal is simple: clone → install → productive in minutes.

---

# 📦 Repository Structure

dotfiles/
├── install.sh
├── README.md
├── zsh/
│   ├── zshrc
│   ├── plugins.zsh
│   ├── aliases.zsh
│   ├── exports.zsh
│   ├── functions.zsh
│   └── p10k.zsh
└── git/
    └── gitconfig

---

# 🚀 Installation

## Linux (Ubuntu / Debian)

### 1️⃣ Install dependencies

```bash
sudo apt update
sudo apt install -y zsh git curl wget