# Python Notebook for CA Agile Central

> Experimental

## Cloning

```bash
git clone https://github.com/asantos2000/ca-rally-docker.git

cd ca-rally-docker
```

## Running

```bash
./run.sh
```

>Copy/paste this URL into your browser when you connect for the first time, to login with a token:
http://localhost:8888/?token=**335edcd1eea5e8a0888fd3ff5e7c12b6c187851e08ab5ab1**

## Configuring
Open notebook and configure it.

<http://localhost:8888/notebooks/work/Rally-username.ipynb>

> Provide the token generated in previously command.

## Build your image [optional]

### Editing Dockerfile

> image/Dockerfile

```Dockerfile
# Start from a core stack version
FROM jupyter/minimal-notebook
# Install in the default python2 environment
# Add your libraries
RUN pip install pyral msgpack msgpack argparse
```

### Building

> image/buil.sh

```bash
docker build -t adsantos/rally-jupyter-notebook .
```

## Contributing

Submit pull-requests

## License

MIT: <http://rem.mit-license.org>