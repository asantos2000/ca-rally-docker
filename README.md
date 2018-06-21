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

## Build your image

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