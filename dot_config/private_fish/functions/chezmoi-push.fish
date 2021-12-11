function chezmoi-push --description 'push all change to chezmoi dotfile git'
    set --local current_pwd (pwd)
    cd ~/.local/share/chezmoi

    set_color blue; echo "Pulling dotfile repository ..."; set_color normal
    git pull

    set_color blue; echo "Commit changes and pushing ..."; set_color normal
    git add .
    git commit -m "commit from $USER@$hostname  at "(date)
    git push
    
    cd "$current_pwd"
end
