# Python Notebook for CA Agile Central

> Experimental

## Cloning

```bash
git clone https://github.com/asantos2000/ca-rally-docker.git

cd ca-rally-docker
```

## Running

Before run you'll need to create a `rally.env` file and put it in the same directory of `run.sh` command.

```conf
RALLY_SERVER=server #rally1.rallydev.com
RALLY_USER=user
RALLY_PASSWORD=password
```
> rally.env file

and then:

```bash
./run.sh
```

To get the URL run `notebook-urls.sh` and copy/paste the URL into your browser

or try:

```bash
open-notebook.sh
```

## Running the notebook
Open notebook in your favorite browser and run it.

<http://localhost:8888/notebooks/work/rally-disable-user.ipynb>

> Don't forget the token.

## Building your image [optional]

### Editing Dockerfile

```Dockerfile
FROM jupyter/minimal-notebook

WORKDIR /home/jovyan/work

# Add your libraries here
RUN pip install pyral msgpack msgpack argparse
```
> image/Dockerfile

Run `image/buil.sh`

## Contributing

Submit pull-requests

## License

MIT: <http://rem.mit-license.org>

🍺 Enjoy!!