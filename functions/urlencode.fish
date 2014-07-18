function urlencode
  perl -MURI::Escape -le "print uri_escape('$argv')"
end
