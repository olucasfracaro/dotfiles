source /home/lucas/zsh-autocomplete/zsh-autocomplete.plugin.zsh

autoload -Uz compinit
compinit

# Starship
eval "$(starship init zsh)"

# Autocomplete baseado no histórico
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Syntax highlighting — comandos roxos
ZSH_HIGHLIGHT_STYLES[command]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[builtin]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[function]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta'


# zoxide
eval "$(zoxide init zsh)"

# fzf
source <(fzf --zsh)

# Aliases
alias ll='eza -lah --icons=auto'
alias la='eza -la --icons=auto'
alias ls='eza --icons=auto'

alias refrenv='source ~/.zshrc; clear'
alias :q=exit
#alias cat='bat'
alias nv=nvim
alias l=ll

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate'
bleep() {
    TB_EXIT=$?;
    eval "$(TB_SHELL=zsh thebleep --alias bleep)";
    TB_EXIT="$TB_EXIT" bleep "$@";
}

[ -f "/home/lucas/.ghcup/env" ] && . "/home/lucas/.ghcup/env" # ghcup-env

# Teclas especiais
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[[2~' overwrite-mode
bindkey '^[[5~' up-line-or-history
bindkey '^[[6~' down-line-or-history

# Ctrl + ← / →
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word

# Alt + ← / →
bindkey '^[b' backward-word
bindkey '^[f' forward-word

# Ctrl + Backspace
bindkey '^H' backward-kill-word

# Ctrl + Delete
bindkey '^[[3;5~' kill-word

# Fastfetch
fastfetch

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/development/flutter/bin:$PATH"
export CHROME_EXECUTABLE=/usr/bin/helium
export PATH="$PATH:$HOME/.pub-cache/bin"
export PATH="$HOME/.pub-cache/bin:$HOME/dart-sdk/bin:$PATH"
