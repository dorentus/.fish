function fish_title
  printf '\a\033]7;file://localhost/%s' (urlencode $PWD)
end
