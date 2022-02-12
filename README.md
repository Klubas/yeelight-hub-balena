# YeelightHub

Wrapper for yeelight-controller api and client with a docker-compose file

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/klubas/yeelight-controller&defaultDeviceType=raspberrypi3)

API and client repos:
* https://github.com/Klubas/yeelight-controller-api
* https://github.com/Klubas/yeelight-controller-client 

## clone api and client
    
    # todo: use git submodules
    git clone https://github.com/Klubas/yeelight-controller \
    && cd ./yeelight-controller \
    && git clone https://github.com/Klubas/yeelight-controller-api \
    && git clone https://github.com/Klubas/yeelight-controller-client  

## build with docker
docker-compose.yml default Dockerfile is Dockerfile.template and it will only work with balena, so you may whant to change it.

    docker-compose up [-d]

## build with balena 

    balena build --deviceType <qemux86-64> --arch <amd64> --multi-dockerignore

## build and run in balena fleet

    balena push <fleet-name> --multi-dockerignore

## Device Configuration
    # The following fleet/device configuration is required
    dtparam=spi=on
    dtparam=i2c=on
    
## Device Variables
    # Setting the following fleet/device configuration may be required for proper scaling of the TFT Display 
    BALENA_HOST_CONFIG_hdmi_cvt                 480 320 60 1 0 0 0      //<width> <height> <framerate> <aspect> <margins> <interlace> <rb>
    BALENA_HOST_CONFIG_hdmi_force_hotplug 	    1
    BALENA_HOST_CONFIG_hdmi_group 	            2
    BALENA_HOST_CONFIG_hdmi_mode 	            87

