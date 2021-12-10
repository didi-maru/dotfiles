function export_matching_variables \
    --description 'Export all varibles matching an expression to a file.' \
    --argument expr file

    if test -f "$file"
        return 1    
    end

    printf "" > $file # Creating empty file
    set --local matching_variables (set --long | grep $expr) # Getting matching variables

    for variable in $matching_variables
        echo "$variable" | tee -a $file >/dev/null # Write variable in file
    end
end
