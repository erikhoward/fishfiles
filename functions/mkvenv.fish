function mkvenv
    if count $argv > /dev/null
        set venv $argv
    else
        set venv .venv
    end
    command python3 -m venv $venv
    . $venv/bin/activate.fish

end
