# Jupyter Lab
---
## Features

* **Running in Ubuntu 18.04**
* **Aria2 Web-UI/AriaNg**
* **ffmpeg**
* **handbrake**
* **rclone**
* **mtn thumbnailer**
- JupyterLab Preview
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(362).png" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(362).png" height="105px" align="left" ></a>
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(368).png" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(368).png" height="105px" align="center" ></a>

---

## REQUIREMENTS
- **ability to run terminal**
- **heroku account**
- **rclone.conf in URL**  ( use gist.. see the [TUTORIAL](https://gist.githubusercontent.com/javsubs91/1f39b762da0f86d90c36026a217a0281/raw/1f1d2529bfb3411352276940c187e99c8730fc31/RCLONE%2520GIST%2520TUTORIAL) if you need
- **ngrok token**

---
## DEPLOY YOUR OWN

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://dashboard.heroku.com/new?template=https://github.com/javsubs91/aria2-webui-on-jupyterlab)

---
## how to start ariaNg?
1. open folder name `JupyterLab`
2. double click `AriaNg-WEB-UI.ipynb`
3. go to  [ngrok.com](https://dashboard.ngrok.com/auth/your-authtoken)
4. insert your token here `TOKEN = "insert ngrok token here"`
5. click ▶ (Run the selected cells and advance)
- **AriaNg preview**
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(366).png" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(366).png" height="105px" align="left"></a>
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(365)_LI.jpg" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-on-jupyterlab/main/preview/Screenshot%20(365)_LI.jpg" height="105px" align="center"></a>


---
## how to transfer?
1. open **notepad** in your pc,
- copy this code `rclone move /root/downloads/my-file.mp4 drivename:/folder destination  -P` then paste into notepad
2. in your **notebook**,
- Right-click on the file you want to transfer, click **Copy Path**, then paste at `/root/downloads/my-file.mp4`
3. replace `drivename:/folder destination` to your rclone remote name, 
- you can see it a remote name by clicking **remote.txt** in Notebook or rclone.conf in your PC
4. open **Notebook Terminal** , `ctrl v` click enter

- **TRANSFER EXAMPLE**
<img src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(367).png" data-canonical-src="https://raw.githubusercontent.com/javsubs91/aria2-webui-runing-in-jupyterlab-server-heroku/main/preview/Screenshot%20(367).png" height="100px" />

---

## how to keep my jupyterlab still alive?
**Choose One**
* [newrelic](https://elements.heroku.com/addons/newrelic)
* [kaffeine](http://kaffeine.herokuapp.com)
* [uptimerobot](https://uptimerobot.com)
* [pingdom](http://pingdom.com)
 
---
Modified from [developeranaz/Jupyter-Notebook-Server-Heroku](https://github.com/developeranaz/Jupyter-Notebook-Server-Heroku)
