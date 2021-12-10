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

    abbr --add --global cm 'chezmoi'
    abbr --add --global cma 'chezmoi add'
    abbr --add --global cmra 'chezmoi re-add'
    abbr --add --global cmap 'chezmoi apply'
    abbr --add --global cmu 'chezmoi update'
    abbr --add --global cmd 'chezmoi diff'
    abbr --add --global cmp 'chezmoi-push'

    # Environment Variables #
    set --global --export EDITOR micro
    set --global --export BROWSER firefox
    
end

