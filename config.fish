stty -echo

# global env
set -gx LC_TIME 'ja_JP.UTF-8'
set -gx LC_MESSAGES 'en_US.UTF-8'
set -gx PATH $HOME/bin /usr/local/sbin /usr/local/bin $PATH
set -gx EDITOR vim

# rbenv
if test -x ~/.rbenv/bin/rbenv
  set -gx PATH $HOME/.rbenv/bin $PATH
end

if which rbenv > /dev/null
  set -gx PATH $HOME/.rbenv/shims $PATH
  rbenv rehash > /dev/null ^&1
end

# tools from homebrew
if which gfind > /dev/null  # findutils
  alias find   gfind
end

if which gsed > /dev/null # gnu-sed
  alias sed    gsed
end

# colors ls
if test (uname) = "Linux"
  alias ls     'ls --color=auto'
  alias dir    'dir --color=auto'
  alias vdir   'vdir --color=auto'
else if which brew > /dev/null ; and brew info coreutils | grep -v 'Not installed' > /dev/null
  alias ls     'gls --color=auto'
  alias dir    'gdir --color=auto'
  alias vdir   'gvdir --color=auto'
end

# colors other
alias grep     'grep --color=auto'
alias gfrep    'fgrep --color=auto'
alias egrep    'egrep --color=auto'

# more ls
alias ll       'ls -l'
alias la       'ls -A'
alias l        'ls -CF'

# mysql UTF-8
alias mysql    'mysql --default-character-set=utf8'

# others
alias rscp     'rsync -vazP -e ssh'
alias axel     'axel -a'
alias tree     'tree -N'

# LS_COLORS
if not [ -r ~/.dircolors ]
  touch ~/.dircolors
end

if which gdircolors > /dev/null
  eval (gdircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')
else if which dircolors > /dev/null
  eval (dircolors -c ~/.dircolors | sed 's/>&\/dev\/null$//')
end

# fish git prompt
set -g __fish_git_prompt_show_informative_status 1
set -g __fish_git_prompt_hide_untrackedfiles 1

set -g __fish_git_prompt_color_branch yellow
set -g __fish_git_prompt_showupstream "informative"
set -g __fish_git_prompt_char_upstream_ahead "↑"
set -g __fish_git_prompt_char_upstream_behind "↓"
set -g __fish_git_prompt_char_upstream_prefix ""

set -g __fish_git_prompt_char_stagedstate "●"
set -g __fish_git_prompt_char_dirtystate "✚"
set -g __fish_git_prompt_char_untrackedfiles "…"
set -g __fish_git_prompt_char_conflictedstate "✖"
set -g __fish_git_prompt_char_cleanstate "✔"

set -g __fish_git_prompt_color_dirtystate blue
set -g __fish_git_prompt_color_stagedstate yellow
set -g __fish_git_prompt_color_invalidstate red
set -g __fish_git_prompt_color_untrackedfiles $fish_color_normal
set -g __fish_git_prompt_color_cleanstate green bold

set -g __fish_git_prompt_color_suffix black
set -g __fish_git_prompt_color_prefix black

# local configurations
if test -r ~/.config/fish/local.fish
  source ~/.config/fish/local.fish
end

stty echo
