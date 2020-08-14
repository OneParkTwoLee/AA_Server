# AA_server: Build Docker image 

Organize files to create docker images

## models 

:The directory where the model(downloaded from the URL) will be located. 
The model's url is located in the api.py file


## api.py, acne.py, status.py

: Python files for Flask server. Run the api.py file from Dockerfile. 


## requirements.txt

: A collection of library names used in the api.py file and required to install with pip3

: Flask, flask_restful, aiohttp, fastai


## Dockerfile

 : Set python version to 3.6 to use fastai and other libraries. The base image is ubuntu:18.04.
Command
I set the version of Python to 3.6 to install aiohttp. 
When creating a Docker image to download the corresponding version of Python, 
I added --no-cahe to the command.

```
$ docker build --no-cache -t acneproject:latest .
$ docker run -d -p 5000:5000 acneproject
```

* * *

> Testing Android

Test communication with url(http://your_current_ip_address:5000/acne/pictures) and 
Android emulator using okhttp3 on Android. If the url is set to 127.0.0.1 instead of the own IP address, 
an error occurs because the emulator thinks it is itself. Use the ip address of your pc, not the local host name.
        



