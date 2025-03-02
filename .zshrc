# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZINIT stuff
#
# path
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
#
# check if installed or install
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
#
# load source again
source "${ZINIT_HOME}/zinit.zsh"

# Add in Powerlevel0k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add in zhs plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

# Load completions
autoload -U compinit & compinit

# call cdreplay after compinit
zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Key bindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HITSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups

# Case Insensitive completion match
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


# Alias and styles for colored ls
alias ls='ls --color'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

# alias for colored tail logs
alias tail='grc tail'

# TODO
# add fuzy search using fzf
# (optional) replace default autocomplete menu with fzf-tab and disable default menu
# (good) open dir preview mode(mini explorer) in cd using fzf-tab and fzf-preview

#
##

