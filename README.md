# Seal Detection using CNNs

Repo using RetinaNet for seal detection in drone imagery along with a set of tools for using geospatial data with CNNs. All operations are executed Google Colab: for each script, click the "launch in Google Colab" button, and if you clone or fork this project be sure to update those pointer buttons in the markdown.

## The subsequent text is old stuff from Patrick's original scripts, I will update later but for now disregard. We aren't using Docker and local machines; it would not be too difficult to re-work our scripts, but that's not on my radar right now.


### Set up Environment

1. Install Docker Desktop on Windows/Mac (https://www.docker.com/products/docker-desktop) or Ubuntu (which I recommend above Mac/PC) (https://docs.docker.com/install/linux/docker-ce/ubuntu/).

2. Install Git

3. Clone this repository (or the one you're using)
```
git clone https://github.com/patrickcgray/spottheseal.git
```
4. Move into that directory
```
cd spottheseal
```
5. Create a Docker Image and Container based on the Dockerfile in the repo. The `-p` makes that port on the Docker container visible on the host machine and the `-v` does a same for a specifc volume, so basically you're passing those through from the VM to your host.

```
docker build -t <img_name> Dockerfile
docker run --name <cont_name> -it -p 8888:8888 -p 6006:6006 -v ~/:/host <img_name>
```
You may need to add apt-get install -y libsm6 libxext6 libxrender-dev libglib2.0-0 per https://github.com/NVIDIA/nvidia-docker/issues/864 based on error after installing opencv-python as noted in the dockerfile.

Your Docker image is now built and you instantiated a container from that image that is now running. Exit that container (which also stops it).
```
exit
```
Now the container is stopped, restart it and attach it to the terminal.
```
docker start <cont_name>
docker attach <cont_name>
```
Now your terminal is in the container, start jupyter:
```
jupyter notebook --allow-root --ip 0.0.0.0 /host
```
5. Navigate to the URL shown in the terminal after starting jupyter and test if everything works. Start a new jupyter notebook or open an existing one and run some simple python commands such as:
```
1+1
>>> 2
```

If you don't want to use Docker you can simply run `pip install the requirements.txt` but this is not the recommended setup and is not tested on all systems.

Next you will need to follow the keras-retinanet installation instructions here https://github.com/fizyr/keras-retinanet#installation.

Now you're ready to develop!

* `uas_img_handler.ipynb` is used to ingest and crop the remote sensing imagery into tiles.
* Once you have tiles, manually create labels in VIA http://www.robots.ox.ac.uk/~vgg/software/via/. There may be better tools depending on your use case. Arc is potentially viable for manual labels, but can be inaccurate without a very rigorous workflow and most CNNs will require tiles because of memory constraints anyway. I've found VIA to be the most user friendly and least likely to miss data.
* `via_to_retinanet.ipynb` is used to convert the output of VIA into what retinanet expects
* `seal_detection.ipynb` shows training the model and runs the detection algorithm on imagery
  * Once you've got all the data in the correct format you'll spend some time here fine tuning the model.
* `export_detections.ipynb` changes the retinanet output back into a geolocated shapefile
* `full_seal_detection_workflow.ipynb` is a demo showing the fully functioning workflow on google colab
 
