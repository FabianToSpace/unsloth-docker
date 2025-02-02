FROM nvidia/cuda:12.1.0-base-ubuntu22.04

RUN apt update && apt install -y --no-install-recommends \
    build-essential python3.10 python3-pip python3.10-dev git python-is-python3 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN python3.10 -m pip install --upgrade pip setuptools wheel
RUN pip install torch==2.4.0 torchvision==0.19.0 torchaudio==2.4.0 --index-url https://download.pytorch.org/whl/cu121 
RUN pip install "unsloth[cu121-torch240] @ git+https://github.com/unslothai/unsloth.git"

CMD [ "/bin/sh" , "-c", "tail -f /dev/null" ]