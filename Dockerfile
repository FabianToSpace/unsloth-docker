FROM nvidia/cuda:12.1.0-base-ubuntu22.04

RUN apt update && apt install -y --no-install-recommends \
    build-essential python3.10 python3-pip python3.10-dev git python-is-python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip setuptools wheel
RUN pip install torch==2.4.0 --index-url https://download.pytorch.org/whl/cu121
RUN pip install "unsloth[cu121-torch240] @ git+https://github.com/unslothai/unsloth.git"
RUN pip install jupyterlab ipywidgets

CMD [ "/bin/sh" , "-c", "tail -f /dev/null" ]
