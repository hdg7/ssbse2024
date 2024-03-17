#!/bin/bash
A=$1
ollama serve &
sleep 5
if [ "$A" == "jupyter" ];
then
	jupyter notebook --allow-root --no-browser --port 8888 --ip=0.0.0.0 --NotebookApp.token=''
else
then 	
	bash
fi
