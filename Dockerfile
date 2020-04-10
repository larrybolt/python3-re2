FROM python:3
RUN git clone https://code.googlesource.com/re2 && cd re2 && make && make test && make install && make testinstall
RUN apt-get update && apt-get install -y \
    build-essential \
     python-dev \
 && rm -rf /var/lib/apt/lists/*
RUN pip install cython
RUN pip install https://github.com/andreasvc/pyre2/archive/master.zip
