function ttp
    set -l now (date +%Y%m%d%H%M%S)
    set -l dir "/tmp/tp-$now"

    mkdir $dir
    cd $dir
end
