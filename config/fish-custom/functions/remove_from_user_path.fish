
function remove_from_user_path --description "Removes the given paths from fish_user_paths"
    for path in $argv
        if set --local index (contains --index $path $PATH)
            set --erase --global PATH[$index]
        end
    end
end

