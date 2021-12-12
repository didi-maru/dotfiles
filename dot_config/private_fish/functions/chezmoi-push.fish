function chezmoi-push --description 'push all change to chezmoi dotfile git'
    set --local current_pwd (pwd)
    cd ~/.local/share/chezmoi

    set_color cyan; echo "Pulling dotfile repository"; set_color normal
    git pull

    set_color cyan; echo "Adding and commit changes"; set_color normal
    git add .
    git commit -m "commit from $USER@$hostname  at "(date)

    set_color cyan; echo "Pushing"; set_color normal
    git push
    
    cd "$current_pwd"
end
