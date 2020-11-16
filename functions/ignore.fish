function ignore
    echo (_dotnet_ignore | string collect -N) >> .gitignore
    echo (_go_ignore | string collect -N) >> .gitignore
    echo (_python_ignore | string collect -N) >> .gitignore
    echo (_r_ignore | string collect -N) >> .gitignore
    echo (_rust_ignore | string collect -N) >> .gitignore
end
