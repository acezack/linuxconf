# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="bira"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git kubectl ansible fzf-zsh-plugin)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
unset TMOUT

alias anp="ansible-playbook -i ~/code/ansible/inventory.yaml --ask-vault-pass --extra-vars @~/.ansible/vault"
alias anpc="ansible-playbook -i ~/code/ansible/inventory.yaml --ask-vault-pass --extra-vars @~/.ansible/vault -C"
alias anpu="ansible-playbook -i ~/code/ansible/inventory.yaml"
alias anpt="f() { \$anpu /export/home/jakadr01adm/code/ansible/\$@; unset -f f; }; f"
alias venv="source ~/.venv/bin/activate"
alias c="pdsh -R ssh -w '10.28.40.[193-206]' "
alias cs="f(){ pdsh -R ssh -w '10.28.40.[193-206]' \"\$@\" 2>/dev/null; unset -f f; }; f"
alias ss="systemctl status"
alias kgoy="kubectl -oyaml get"
alias kgpoy="kubectl -oyaml get pod"
alias kgsoy="kubectl -oyaml get service"
alias glrb="old_cur=\$(git_current_branch); gco \$(git_main_branch); gl; gco \$old_cur; unset old_cur; grb \$(git_main_branch);"
alias chrome="chromium-browser"
alias take="f(){ _ chown -R \$USER:XOS-Users \$@; _ chmod -R 755 \$@; unset -f f; }; f"
alias kd="kubectl describe"
alias ke="kubectl edit"
alias kg="kubectl get"
alias flo="f(){ for n in \$(find ./); do echo \$n; grep -i \$@ \$n 2>/dev/null; done | less; unset -f f; }; f"
alias fll="f(){ for n in \$(find ./); do grep -i \$@ \$n 2>/dev/null; if [ \$? -eq 0 ]; then echo \\\\nPATH TO ^: \$n\\\\n\\\\n; fi; done | less; unset -f f; }; f"
alias fl="f(){ for n in \$(find ./); do grep -i \$@ \$n 2>/dev/null; if [ \$? -eq 0 ]; then echo \\\\nPATH TO ^: \$n\\\\n\\\\n; fi; done; unset -f f; }; f"
alias al="ansible-lint"
alias alf="ansible-lint --fix"
alias alft="ansible-lint -t formatting --fix"
export ar="/export/home/jakadr01adm/code/ansible"
alias glot="git --no-pager log --oneline --decorate"
