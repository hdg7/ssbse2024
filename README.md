# SSBSE 2024 Challenge

During the challenge there are two options:

- Quantum challenge
- Generative AI challenge

## Quantum Container
You can simply have a generic Jupyter container or use your own system:
```
docker run -p 8888:8888 -v "${PWD}":/home/jovyan/work quay.io/jupyter/scipy-notebook:2024-03-14
```

## Generative AI Container
This container aims to provide a basic ollama setup. You can build it with:
```
docker build . --tag="genai"
```
To run the container in Jupyter mode:
```
docker run -it -p 10000:8888 genai jupyter
```
Any other input will open a bash container.
