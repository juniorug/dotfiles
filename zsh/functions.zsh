mkcd() { mkdir -p "$1" && cd "$1"; }

# Atualização rápida do terminal
zreload() { source ~/.zshrc; echo "✅ Reloaded ~/.zshrc"; }

# Mostra IPs
myip() { ip a | grep -E "inet " | awk '{print $2}' }

#update & upgrade
update() { sudo apt update && sudo apt upgrade; }