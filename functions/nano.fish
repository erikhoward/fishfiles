# Prepend `sudo` to `nano` command if file is not editable by current user
# Warn if file does no exist
function nano --description 'Prepend sudo to nano command if file is not editable by current user'
  if not test -e "$argv"
    read -p "echo 'File $argv does not exist. Ctrl+C to cancel'" -l confirm
    touch "$argv" 2>/dev/null
  end

  if test -w "$argv"
    /bin/nano -mui $argv
  else
    echo "Editing $argv requires root permission"
    sudo /bin/nano -mui $argv
  end
end
