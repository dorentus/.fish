function fish_prompt
  set -l last_status $status

  if not set -q __fish_prompt_computername
    if which scutil > /dev/null
      set -g __fish_prompt_computername (scutil --get ComputerName)
    else
      set -g __fish_prompt_computername (hostname -f)
    end
  end

  if not set -q __fish_prompt_symbol
    set -l symbols 🍏 🍡 👾 ⭕ 🌀 🌐
    set -l symbols_count (count $symbols)
    set -l hosthash (hostname -f | tr -d '\n' | shasum)
    set -l selected_index (ruby -e "print '$hosthash'.to_i(16) % $symbols_count + 1")
    set -g __fish_prompt_symbol $symbols[$selected_index]
  end

  if not set -q __fish_prompt_at_symbol
    if test (uname) = 'Darwin'
      set -g __fish_prompt_at_symbol 
    else
      set -g __fish_prompt_at_symbol @
    end
  end

  if not test $last_status -eq 0
    set_color $fish_color_error
  else
    set_color black
  end
  printf "\n┌─"

  set_color black
  printf $USER

  set_color black
  printf $__fish_prompt_at_symbol

  set_color black --bold
  printf $__fish_prompt_computername

  set_color normal
  printf ":"

  set_color blue
  printf '%s' (echo $PWD | sed -e "s|^$HOME|~|")

  if not test $last_status -eq 0
    set_color $fish_color_error
  else
    set_color black
  end
  printf "\n└───"

  set_color black
  printf "%s " $__fish_prompt_symbol

  set_color normal
  printf "%s " (__fish_git_prompt)

  set_color normal
end
