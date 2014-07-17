function rbenv_prompt
  set -l rb_version (rbenv local 2> /dev/null)
  if [ "$rb_version" != "" ]
    set_color 62A; printf "rb=%s🍄 " $rb_version
  else
    printf "$argv"
  end

end
