#!/bin/sh

# variables
default_address="localhost"
default_port="8080"
patternlab_dir="./patternlab"
patternlab_task="gulp export"
patternlab_watch="gulp watch"
kirby_router="kirby/router.php"
root_dir="$(pwd)"

# colors
color_red='\033[0;31m'
color_green='\033[0;32m'
color_yellow='\033[0;33m'
color_blue='\033[0;34m'
color_default='\033[0m'

exportAssets() {
    echo "${color_green}-----------------------------------------------${color_default}"
    echo "${color_green}--- Exporting Patternlab Assets - starting  ---${color_default}"
    echo "${color_green}-----------------------------------------------${color_default}"
    cd $patternlab_dir
    npm install
    npm install gulp -g
    $patternlab_task
    echo "${color_green}-----------------------------------------------${color_default}"
    echo "${color_green}--- Exporting Patternlab Assets - finished  ---${color_default}"
    echo "${color_green}-----------------------------------------------${color_default}"
}

startConnector(){
    echo "${color_green}-----------------------------------------------${color_default}"
    echo "${color_green}--- Watcher - starting  ---${color_default}"
    echo "${color_green}-----------------------------------------------${color_default}"
    $patternlab_watch
}

startServer() {
    echo "${color_green}-----------------------------------------------${color_default}"
    echo "${color_green}----------- Kirby Server - starting -----------${color_default}"
    echo "${color_green}-----------------------------------------------${color_default}"
    # exportAssets
    echo "${color_green}------------- Starting PHP Server -------------${color_default}"
    echo "${color_green}-----------------------------------------------${color_default}"
    cd $root_dir
    php -S $1:$2 $kirby_router
}

if [ $# -eq 2 ]
    then
    startServer $1 $2
elif [ $# -eq 1 ]
    then
    startServer $default_address $1
else
    startServer $default_address $default_port
fi