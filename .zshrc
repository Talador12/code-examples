# if you come from bash you might have to change your $PATH.
export PATH=${PATH}:/usr/bin:/usr/local/bin:~/.local/bin

alias repos='cd /mnt/y/Repositories/Github'
alias python='python3'
alias python3='python3'
alias pip='pip3'
alias getos='cat /etc/os-release'
alias update='sudo apt update && sudo apt -y upgrade'
alias k="kubectl"
alias d="docker"
alias vi="vim"

# Usage: remote-tmux foo.example.com
remote-tmux() {
  ssh "${1}" -t 'tmux -CC new-session -A -s main'
}

alias configgit="git config --global credential.helper cache && git config --global credential.helper 'cache --timeout=3600000'"
configgit

setup-cli() {
	git config --global user.email "talador12@gmail.com"
	git config --global user.name "Talador12"
	cd $ZSH_CUSTOM/plugins/
	curl https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/plugins/asdf/asdf.plugin.zsh >> asdf.plugin.zsh
	git clone https://github.com/asdf-vm/asdf.git ~/.asdf
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
	git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
	git clone https://github.com/bobthecow/git-flow-completion $ZSH_CUSTOM//plugins/git-flow-completion
	echo -e "# Switch to ZSH shell\nif test -t 1; then\n    exec zsh\nfi\n" >> ~/.bashrc
}

######################################
######################################
###      ZSH only below here       ###
######################################
######################################

# Path to your oh-my-zsh installation.
export ZSH="/home/talador12/.oh-my-zsh"

## set colors for LS_COLORS
# eval `dircolors ~/.dircolors`

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="norm"
# ZSH_THEME="avit"

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

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
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
plugins=(
	git
	extract
	web-search
	yum
	git-extras
	docker
	vagrant
	# customs
	asdf
	zsh-syntax-highlighting
	zsh-autosuggestions
	git-flow-completion
)

ZSH_DISABLE_COMPFIX=true
source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
