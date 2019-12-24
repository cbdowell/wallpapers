function take
    set -l dir $argv[1]
    mkdir -p $dir; and cd $dir
end
