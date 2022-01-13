function git_clone_from_clipboard \
    --description 'Clone git repo in the clipboard in the given directory or in a temporary one if noe is given.' \
    --argument dir

    if test $dir
        mkdir -p $dir
    else
        set dir (mktemp -d -p /tmp)
    end

    cd $dir
    set --local repo (xclip -selection clipboard -o)
    git clone $repo
end 
