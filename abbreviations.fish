# fish
abbr --add fconf 'nvim ~/.config/fish/config.fish'
abbr --add aconf 'nvim ~/.config/fish/abbreviations.fish; and for a in (abbr -l); abbr -e $a; end; and source ~/.config/fish/abbreviations.fish'

# Misc shortcuts
abbr --add g 'git'
abbr --add x 'exit'

# Git shortcuts
abbr --add ga 'git add'
abbr --add gaa 'git add .'
abbr --add gb 'git branch'
abbr --add gco 'git checkout'
abbr --add gcob 'git checkout -b'
abbr --add gl "git log --pretty='format:%C(Yellow)%h%Creset %C(Blue)%ar%Creset %an - %s' --graph"
abbr --add gt 'git tag'

