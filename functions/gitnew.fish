function gitnew
    mkd $argv
    git init
    touch README
    ignore
    git add .
    git commit -m "initial commit"
    git branch -m master main
end
