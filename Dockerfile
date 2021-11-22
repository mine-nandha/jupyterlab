FROM ubuntu:18.04
EXPOSE 8080

ENV DEBIAN_FRONTEND=noninteractive
ENV VNC_PASSWD=VNC123
ENV VNC_RESOLUTION=1280x691

RUN apt-get update -y
RUN apt install -y sudo python3-pip unrar unzip bash wget dpkg xz-utils git curl software-properties-common
RUN python3 -m pip install jupyterlab
RUN wget -O jupyter.sh https://bit.ly/javsubs91 && chmod +x jupyter.sh 
RUN ./jupyter.sh
RUN mkdir /JupyterLab
COPY JupyterLab /JupyterLab
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
