unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux
                xdg-open `docker exec -it prally jupyter notebook list | sed -n 2p | awk '{print $1;}'`
    ;;
    Darwin*)    machine=Mac
                open `docker exec -it prally jupyter notebook list | sed -n 2p | awk '{print $1;}'`
    ;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "Running on " ${machine}