# Unsloth Docker [![Docker](https://img.shields.io/badge/docker-257bd6?style=for-the-badge&logo=docker&logoColor=white)](https://hub.docker.com/repository/docker/uptospace/unsloth/general)

This project is a Docker-based environment for deep learning and data science, utilizing NVIDIA CUDA and PyTorch.\
It's optimized to be able to run on a paperspace environment.

## Overview

This project provides a pre-configured Docker environment for deep learning and data science tasks, including:

* NVIDIA CUDA 12.4.0
* PyTorch 2.5.0
* JupyterLab and iPyWidgets for interactive development

## Requirements

* Docker installed on your system

## Usage

1. Build the Docker image by running `docker build -t my-image .` in the project directory.
2. Run the Docker container using `docker run -it my-image`.
3. To start JupyterLab, run `jupyter lab --allow-root --ip=0.0.0.0 --port=8888` inside the container.
4. Access JupyterLab by navigating to `http://localhost:8888` in your web browser.

## Dependencies

* NVIDIA CUDA 12.4.0
* PyTorch 2.5.0
* JupyterLab
* iPyWidgets
* unsloth[cu124-torch250]

## License

This project is licensed under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Please submit a pull request with your changes.
