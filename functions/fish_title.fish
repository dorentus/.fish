function fish_title
  if not set -q __fish_title_update_needed
    if test (uname) = "Darwin"
      set -g __fish_title_update_needed yes
    else
      set -g __fish_title_update_needed no
    end
  end

  if test $__fish_title_update_needed = "yes"
    printf '\a\033]7;file://localhost/%s' (urlencode $PWD)
  end
end
