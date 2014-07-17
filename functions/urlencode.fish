function urlencode
  ruby -r open-uri -e "print URI::encode('$argv')"
end
