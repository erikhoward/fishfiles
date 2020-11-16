function gnb -a branch
  git checkout -b "$branch"
  git push --set-upstream origin $branch
end
