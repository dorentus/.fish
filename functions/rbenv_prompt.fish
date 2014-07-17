function rbenv_prompt
  if which rbenv > /dev/null
    set -l rb_version (rbenv local 2> /dev/null)
    if [ "$rb_version" != "" ]
      set_color 62A; printf "rb=%s🍄 " $rb_version
    else
      printf "$argv"
    end
  else
    printf "$argv"
  end
end
