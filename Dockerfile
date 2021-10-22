FROM nvcr.io/nvidia/l4t-ml:r32.6.1-py3

RUN apt update && apt install -y libfftw3-3 libfftw3-dev

RUN pip3 install pyfftw

RUN pip3 install tiffile

RUN apt install unzip

RUN cd /home && \
    wget https://github.com/imperial-photonics/HexSimProcessor/archive/refs/heads/find-phase.zip && \
    unzip find-phase.zip && rm find-phase.zip

