open `docker exec -it prally jupyter notebook list | sed -n 2p | awk '{print $1;}'`