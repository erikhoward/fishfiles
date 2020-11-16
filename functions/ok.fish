function ok --description 'Clear and print contents of the current directory.'
  clear;
  
  # Print working directory in color
  printf 'In ';
  set_color $fish_color_cwd
  printf "%s" (pwd)
  set_color normal
  printf ":\n"
  
  ls -alh --git;
end
