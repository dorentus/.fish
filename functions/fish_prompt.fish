function fish_prompt
  set -l last_status $status

  if not set -q __fish_prompt_computername
    set -g __fish_prompt_computername (scutil --get ComputerName)
  end

  if not set -q __fish_prompt_symbol
    set -g __fish_prompt_symbol (~/bin/choose_by_hostname 🍏 🍡 👾 ⭕ 🌀 🌐)
  end

  if not test $last_status -eq 0
    set_color $fish_color_error
  else
    set_color black
  end
  printf "\n┌─"  

  set_color black
  printf $USER

  set_color 260d40
  printf 〄

  set_color normal
  set_color black
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
