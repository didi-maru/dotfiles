function export_tide_config \
    --description 'Export current tide theme configuration to a file ($__fish_config_dir/tide_theme_config.fish by default)'\
    --argument file

    # if no file is given set FILE to default
    if not test -n "$file"
        set file "$__fish_config_dir/tide_theme_config.fish"
    end

    echo "Exporting tide current configuration to '$file'."
    export_matching_variables "^tide_*" "$file"
end
