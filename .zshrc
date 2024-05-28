
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle :compinstall filename '/home/debxd/.zshrc'
### Alias
alias ls="eza"

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history
# End of lines configured by zsh-newuser-install
autoload -U colors && colors
# required to show git branch
setopt PROMPT_SUBST

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b  "

parse_git_branch() {
  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null)
  local changed_files
  changed_files=$(git status --porcelain 2>/dev/null | grep -v '^??' | wc -l)
  local git_status
  git_status=$(git status --porcelain 2>/dev/null | grep -v '^??' | wc -l)
  if [ -n "$branch" ]; then
    local git_info="$fg[green]%]  $branch"
    if [ "$git_status" -ne "0" ]; then
      git_info+=" $fg[red]%]?"
    fi
    git_info+="$fg[green]$changed_files%]"
    echo "$git_info"
  fi
}

PS1=" %B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]% \$(parse_git_branch)%b$reset_color%}
$ "

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source ~/.zsh_profile

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)
# source /usr/share/nvm/init-nvm.sh
