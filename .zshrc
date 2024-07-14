eval "$(starship init zsh)"
alias hyprland="dbus-run-session Hyprland"

alias ls="eza --icons"
alias tree="eza --tree"
alias nv="nvim ."

FZF_ALT_C_COMMAND= source <(fzf --zsh)

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias tmux="tmux source-file ~/.config/tmux/.tmux.conf"
source ~/.zsh_profile
source /usr/share/nvm/init-nvm.sh
nitch

# bun completions
[ -s "/home/debxd/.bun/_bun" ] && source "/home/debxd/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

