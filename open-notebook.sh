URL=`docker exec -it prally jupyter notebook list | sed -n 2p | awk '{print $1;}'`

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux
                xdg-open $URL;;
    Darwin*)    machine=Mac
                open $URL;;
    CYGWIN*)    machine=Cygwin
                xdg-open $URL;;
    MINGW*)     machine=MinGw
                start $URL;;
    *)          machine="UNKNOWN:${unameOut}"
esac
echo "Running on " ${machine}