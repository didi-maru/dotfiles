if status is-interactive
    # Commands to run in interactive sessions can go here

    # extra paths #
    fish_add_path ~/.local/bin

    # Abbreviations #
    abbr --add --global m "micro"
    abbr --add --global cux "chmod u+x"
        
    abbr --add --global ca "code --a"
    abbr --add --global ch "code ."

    abbr --add --global sd "sudo dnf"
    abbr --add --global sdi "sudo dnf install"
    abbr --add --global sdl "sudo dnf list"
    abbr --add --global sds "sudo dnf search"
    abbr --add --global sdr "sudo dnf remove"
    abbr --add --global sdu "sudo dnf upgrade"

    abbr --add --global cm chezmoi
    abbr --add --global cma 'chezmoi add'
    abbr --add --global cmap 'chezmoi apply'
    abbr --add --global cmd 'chezmoi diff'
    abbr --add --global cmp chezmoi-push
    abbr --add --global cmra 'chezmoi re-add'
    abbr --add --global cmu 'chezmoi update'
    abbr --add --global cmv 'chezmoi verify'

    abbr --add --global ga "git add"
    abbr --add --global gd "git diff"
    abbr --add --global gcm "git commit -m"
    abbr --add --global gpl "git pull"
    abbr --add --global gps "git push"
    abbr --add --global gst "git status"

    abbr --add --global sgu "sudo grub2-mkconfig -o /boot/efi/EFI/fedora/grub.cfg"
    

    # Environment Variables #
    set --global --export EDITOR /usr/bin/micro
    set --global --export VISUAL /usr/bin/gedit
    set --global --export BROWSER firefox
    

end
