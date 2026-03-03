# 🛠 Dotfiles

Personal Zsh-based development environment for Linux and macOS.

This repository provides a clean, modular, and reproducible shell setup using:

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

```text
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
```

---

# 🚀 Installation

## Linux (Ubuntu / Debian)

### 1️⃣ Install dependencies

```bash
sudo apt update
sudo apt install -y zsh git curl wget
```

### 2️⃣ Clone repository

```bash
git clone https://github.com/YOUR_USER/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 3️⃣ Run installer

```bash
chmod +x install.sh
./install.sh
```

The installer will:

- Install Oh My Zsh (if missing)
- Install Powerlevel10k
- Install required plugins
- Create symbolic links
- Set Zsh as default shell

Then restart your terminal.

## macOS

Make sure Homebrew is installed.

```bash
brew install zsh git
```

Clone and run installer:

```bash
git clone https://github.com/YOUR_USER/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

---

# 🎨 Powerlevel10k

Powerlevel10k configuration is stored in:

- `~/.p10k.zsh`

To reconfigure:

```bash
p10k configure
```

Recommended font:

- MesloLGS Nerd Font

If icons appear broken, install a Nerd Font and set it in your terminal preferences.

---

# 🖥 Fastfetch (Optional)

Fastfetch displays system information when opening the terminal.

Install:

```bash
sudo apt install fastfetch
```

Configuration file:

- `~/.config/fastfetch/config.jsonc`

It is executed safely using a `precmd` hook to avoid Powerlevel10k instant prompt warnings.

---

# 🔄 Updating

After editing configuration:

```bash
git add .
git commit -m "update configuration"
git push
```

On another machine:

```bash
cd ~/dotfiles
git pull
```

---

# 🧠 Zsh Initialization Order

When a terminal starts, Zsh loads files in this order:

- `.zshenv`
- `.zprofile`
- `.zshrc`
- `.zlogin`

This repository manages `.zshrc` only.

---

# 🛠 Customization

- Aliases → `zsh/aliases.zsh`
- Environment variables → `zsh/exports.zsh`
- Functions → `zsh/functions.zsh`
- Plugins and theme → `zsh/plugins.zsh`
- Prompt configuration → `zsh/p10k.zsh`

All components are modular to keep the setup clean and maintainable.

---

# 🧩 Installed Plugins

Oh My Zsh plugins:

- `git`
- `zsh-autosuggestions`
- `zsh-syntax-highlighting`

Theme:

- Powerlevel10k

---

# ⚠️ Troubleshooting Powerlevel10k Instant Prompt Warning

If you see:

```text
[WARNING]: Console output during zsh initialization detected.
```

Ensure no commands print output during initialization.

Fastfetch is configured using a `precmd` hook to prevent this issue.

---

# 💻 Target Environment

- Ubuntu 22+ / 24+
- macOS
- Zsh 5.8+
- Python (pyenv compatible)
- Java (SDKMAN compatible)
- Docker

---

# 📄 License

MIT License. Feel free to fork and adapt for your own environment.
