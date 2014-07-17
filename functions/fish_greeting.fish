function fish_greeting
  printf "\n"
  if which fortune > /dev/null
    if which lolcat > /dev/null
      fortune -s | lolcat
    else
      fortune -s
    end
  end
end
