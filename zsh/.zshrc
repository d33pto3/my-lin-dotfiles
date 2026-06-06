# ===========================
# Oh My Zsh Setup
# ===========================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ==========================
# History
# ==========================
HISTSIZE=5000
SAVEHIST=5000
HISTFILE=~/.zsh_history
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY

source $ZSH/oh-my-zsh.sh

# ==========================
# zoxide (smart cd)
# ==========================
eval "$(zoxide init zsh)"

# ==========================
# Aliases
# ==========================
alias ls="eza --icons"
alias ll="eza --icons -la"
alias gs="git status"
alias ga="git add ."
alias gc="git commit"
alias gp="git push"
alias cat="batcat"
alias lg="lazygit"
alias v="nvim"
alias htop="btop"

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
export PATH="$HOME/.local/bin:$PATH"

# ========================
# neofetch
# ========================
command -v neofetch >/dev/null && neofetch

# =======================
# tmux auto-start
# =======================
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
  tmux attach-session -t default 2>/dev/null || tmux new-session -s default
fi

# =========================
# Powerlevel10k
# =========================
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
