function chezmoi-push --description 'push all change to chezmoi dotfile git'
set --local current_pwd (pwd)
cd ~/.local/share/chezmoi
git add .
git commit -m "commit at "(date)
git push
cd "$current_pwd"
end
