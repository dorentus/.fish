function urlencode
  /usr/bin/ruby -r open-uri -e "print URI::encode('$argv')"
end
