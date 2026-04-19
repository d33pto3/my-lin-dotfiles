# ===========================
# Oh My Zsh Setup
# ===========================
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
  git 
  zsh-autosuggestions 
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# ==========================
# Starship prompt
# ==========================
eval "$(starship init zsh)"

# ==========================
# zoxide (smart cd)
# ==========================
eval "$(zoxide init zsh)"

# Better history
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history

setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

# ====================
# Aliases
# ====================
alias ls="eza --icons"
alias ll="ls -la"
alias gs="git status"
alias ga="git add ."
alias gc="git  commit"
alias gp="git push"
alias cat="batcat"
alias lg="lazygit"
alias v="nvim"
# ==========================
# NVM (Node Version Manager)
# ==========================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# =========================
# Path Updates
# =========================
export PATH="/snap/bin:$PATH"

# ========================
# neofetch
# ========================
command -v neofetch >/dev/null && neofetch

# =======================
# tmux auto-start (fixed)
# =======================
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default 2>/dev/null || tmux new-session -s default
fi

# =========================
# =========================
if [ -f ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
  source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

