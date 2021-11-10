FROM ubuntu:18.04
EXPOSE 8080

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt install -y sudo
RUN sudo apt install -y python3-pip
RUN python3 -m pip install jupyterlab
RUN apt install -y unrar
RUN apt install -y unzip
RUN apt install -y bash
RUN apt install -y wget
RUN apt install -y dpkg
RUN apt install -y xz-utils
RUN sudo apt install -y software-properties-common
RUN sudo add-apt-repository ppa:stebbins/handbrake-releases -y
RUN sudo apt install -y handbrake-cli handbrake-gtk
RUN sudo add-apt-repository -y ppa:wahibre/mtn -y
RUN sudo apt install -y mtn
RUN wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb \
  && dpkg -i cloudflared-linux-amd64.deb
RUN rm /cloudflared-linux-amd64.deb
RUN apt install -y git
RUN apt install -y curl
RUN curl -O 'https://raw.githubusercontent.com/developeranaz/Rclone-olderversion-Backup/main/rclone-current-linux-amd64.zip'
RUN unzip rclone-current-linux-amd64.zip
RUN cp /rclone-*-linux-amd64/rclone /usr/bin/
RUN chown root:root /usr/bin/rclone
RUN chmod 755 /usr/bin/rclone
RUN apt install -y ffmpeg
RUN apt install -y nodejs
RUN apt install -y npm
RUN apt install -y lxterminal
RUN apt install -y ca-certificates
RUN apt install -y fakeroot
# RUN apt install <your-pakage> -y
RUN wget -N git.io/aria2.sh && chmod +x aria2.sh
RUN printf 1 | ./aria2.sh
RUN printf 12 | ./aria2.sh

RUN mkdir /JupyterLab
COPY JupyterLab /JupyterLab
COPY jupyter.py /conf/jupyter.py
COPY jupyter_notebook_config.json /root/.jupyter/jupyter_notebook_config.json

RUN python3 -m pip install --user m3u8downloader

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
