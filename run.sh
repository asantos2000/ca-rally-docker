# Create a rally.env file with at least:
# RALLY_SERVER=rally1.rallydev.com
# RALLY_USER=user
# RALLY_PASSWORD=password
echo "🐳 Starting..."
if [ ! -f ./rally.env ]; then
    echo "No enviroment variables file found."
else
    echo "Using rally.env file for enviroment variables."
fi

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux
                VOLUME=`pwd`;;
    Darwin*)    machine=Mac
                VOLUME=`pwd`;;
    CYGWIN*)    machine=Cygwin
                VOLUME=/`pwd`;;
    MINGW*)     machine=MinGw
                VOLUME=/`pwd`;;
    *)          machine="UNKNOWN:${unameOut}"
esac

echo "Running on " ${machine}

docker run \
--name prally \
--rm \
-p 8888:8888 \
-v $VOLUME:/home/jovyan/work \
--env-file ./rally.env \
adsantos/rally-jupyter-notebook

echo "👋 Goodbye"