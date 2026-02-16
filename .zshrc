# Enable Powerlevel10k instant prompt. Keep near the top.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Oh My Zsh updates
# zstyle ':omz:update' mode disabled
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 13

# Shell behavior
# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

# History
HIST_STAMPS="yyyy-mm-dd"
HISTSIZE=5000
HISTFILE="$HOME/.zsh_history"
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Theme (use OMZ theme path; no Homebrew path)
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins (order matters: completions → autosuggestions → history-substring-search → syntax-highlighting)
plugins=(git zsh-completions zsh-autosuggestions zsh-history-substring-search zsh-syntax-highlighting)
# Only add macOS plugin when running on macOS
if [[ "$(uname)" == "Darwin" ]]; then
  plugins+=("macos")
fi

# Load Oh My Zsh
source "$ZSH/oh-my-zsh.sh"

# Keybindings (Emacs mode + typical Ctrl-P/N behavior)
bindkey -e
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

# Aliases
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="cd ~/.config/nvim && nvim init.lua"

# Optional tools (guarded)
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init zsh)"
command -v mcfly  >/dev/null 2>&1 && eval "$(mcfly init zsh)"

# Powerlevel10k user config
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"

# Editor / Locale examples
# export EDITOR='nvim'
# export LANG=en_US.UTF-8

# Neovim XDG paths
export XDG_DATA_HOME="$HOME/.nvim-data"
export XDG_STATE_HOME="$HOME/.nvim-state"
export XDG_CACHE_HOME="$HOME/.nvim-cache"

# PATH example
# export PATH="$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
