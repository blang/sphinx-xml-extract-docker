# Sphinx documentation xml extraction

This docker image provides an easy way to extract python documentation in xml format from python modules.

It only needs a setup script to install the needed packages and an `index.rst` to define the desired output.

## Usage

### Build/Pull the image
```
docker pull blang/sphinx-xml-extract
# OR build by yourself
docker build -t blang/sphinx-xml-extract .
```


### Create a `setup.sh` to install your package:
```
pip install matplotlib
```

### Create a `index.rst` defining the output of sphinx:
```
.. automodule:: matplotlib.pyplot
   :members:
   :undoc-members:
   :show-inheritance:
```

### Run the docker container:
Mount `/data/output`, that's where the generated `index.xml` will be placed.
Mount `/data/input`, containing `setup.sh` and `index.rst`

```
docker run  -i -t -v /tmp/output:/data/output -v $PWD:/data/input:ro blang/sphinx-xml-extract
```
