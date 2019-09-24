FROM ianren/cuda9.0-cudnn7.0-tf1.5-keras2.1-pytorch1.0
RUN apt-get update
RUN apt-get install python3.6-dev -y
COPY cocoapi /cocoapi/
WORKDIR /cocoapi/PythonAPI/
RUN python setup.py build_ext install
COPY apex /apex/
WORKDIR /apex/
RUN python setup.py install --cuda_ext
COPY HRNet-Object-Detection /code/
WORKDIR /code/
RUN sh compile.sh
RUN python setup.py install 
WORKDIR /code/
