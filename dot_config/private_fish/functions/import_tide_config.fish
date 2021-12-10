function import_tide_config \
    --description 'Import tide theme configuration from a file (~/tide_theme_config.fish by default)'\
    --argument file

    # if no file is given set FILE to default
    if not test -n "$file"
        set file "$HOME/tide_theme_config.fish"
    end

    if not test -f "$file"
        echo "$file not found."
        return 1
    end

    echo "Importing tide current configuration from '$file'."
    for line in (cat "$file")
        echo $line
        set --local arr (string split ' ' (string replace --regex --all '  *' ' ' "$line")) # Parsing line
        set --local var_name $arr[1]
        set --local var_values $arr[2..]
        for i in (seq 1 (count $var_values))
            if test (string sub -s 1 -l 1 $var_values[$i]) = "'" -a  (string sub -s -1 -l 1 $var_values[$i]) = "'"
                set var_values[$i] (string replace --all '\'' '' "$var_values[$i]")
            end
        end
        set --universal $var_name $var_values
    end
end
