function fish_right_prompt
  if not set -q __fish_right_prompt_emoji_bugged
    if test (uname) = "Linux"
      set -g __fish_right_prompt_emoji_bugged yes
    else
      set -g __fish_right_prompt_emoji_bugged no
    end
  end

  if test $__fish_right_prompt_emoji_bugged = "no"
    rbenv_prompt (set_color black; today_prompt '🐠 ')
  end
end
