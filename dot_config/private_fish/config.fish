if status is-interactive
    # Commands to run in interactive sessions can go here

    # extra paths #
    fish_add_path ~/.local/bin

    # Abbreviations #
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
    abbr --add --global cmra 'chezmoi re-add'
    abbr --add --global cmap 'chezmoi apply'
    abbr --add --global cmu 'chezmoi update'
    abbr --add --global cmd 'chezmoi diff'
    abbr --add --global cmp chezmoi-push

    abbr --add --global ga "git add"
    abbr --add --global gd "git diff"
    abbr --add --global gcm "git commit -m"
    abbr --add --global gpl "git pull"
    abbr --add --global gps "git push"
    abbr --add --global gst "git status"

    __abbr_tips_init

    # Environment Variables #
    set --global --export EDITOR micro
    set --global --export BROWSER firefox

end
