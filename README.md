# Jetson-ML
A docker container based on Nvidia ML container for Jetson Xavier, see https://ngc.nvidia.com/catalog/containers/nvidia:l4t-ml.

This build adds fftw system libraries and python module.  It also adds the tifffile python module and downloads code from the HexSimProcessor git repository.

To build: In a terminal cd to the directory containing the Dockerfile and type:

```
lab@lab-desktop:~/Jetson-ML$ sudo docker build -t ml-cont
```

To run the container type:

```
lab@lab-desktop:~/Jetson-ML$ sudo docker run -td --rm --runtime nvidia --network host ml-cont
```

To stop the container type:

```
lab@lab-desktop:~/Jetson-ML$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS               NAMES
609025af2cce        ml-cont             "/bin/sh -c '/bin/ba…"   2 hours ago         Up 2 hours                              objective_cohen
```

Then using the container name, "objective_cohen" in this case, type:

```
lab@lab-desktop:~/Jetson-ML$ sudo docker ps objective_cohen
```

To restart the container type:

```
lab@lab-desktop:~/Jetson-ML$ sudo docker restart objective_cohen
```
