#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "➡️  Dotfiles dir: $DOTFILES_DIR"

# Dependências mínimas
echo "➡️  Installing packages..."
sudo apt update -y
sudo apt install -y zsh git curl wget unzip

# (Opcional mas recomendado) fzf, bat, eza, ripgrep
sudo apt install -y fzf ripgrep bat || true

# Symlinks
link_file() {
  local src="$1"
  local dst="$2"

  if [[ -e "$dst" || -L "$dst" ]]; then
    echo "🔁 Backup: $dst -> $dst.bak"
    mv "$dst" "$dst.bak"
  fi

  ln -s "$src" "$dst"
  echo "✅ Linked: $dst -> $src"
}

mkdir -p "$HOME/.config"

link_file "$DOTFILES_DIR/zsh/zshrc" "$HOME/.zshrc"
link_file "$DOTFILES_DIR/zsh/p10k.zsh" "$HOME/.p10k.zsh"

# Git config (podes comentar se não quiseres)
link_file "$DOTFILES_DIR/git/gitconfig" "$HOME/.gitconfig"

# Define Zsh como shell (pede password)
if [[ "$SHELL" != *"zsh"* ]]; then
  echo "➡️  Setting zsh as default shell..."
  chsh -s "$(command -v zsh)"
fi

echo
echo "✅ Concluído!"
echo "➡️  Abre um novo terminal ou executa: zsh"