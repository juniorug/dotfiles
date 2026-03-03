# Oh My Zsh configuration loaded by ~/.zshrc

# Where OMZ is installed
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins (OMZ plugins must be declared before sourcing OMZ)
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# OMZ settings (optional but nice)
DISABLE_AUTO_UPDATE="true"       # or set zstyle update mode
HYPHEN_INSENSITIVE="true"
ENABLE_CORRECTION="false"

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Load Powerlevel10k config
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"