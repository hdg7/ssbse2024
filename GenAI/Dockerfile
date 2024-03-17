FROM debian:12

RUN apt-get -y update
RUN apt-get install -yq --fix-missing build-essential emacs-nox vim-tiny git inkscape jed libsm6 libxext-dev libxrender1 lmodern netcat-openbsd python3-dev tzdata unzip nano emacs ca-certificates wget gcc-12 gcc-12-plugin-dev curl screen  nginx clang llvm lld gdb

#Support packages for Python
RUN apt-get install -y libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev automake python3-dev python3-pip #python-venv

RUN useradd -ms /bin/bash debian 

USER debian
WORKDIR /home/debian

#Installing Ollama
USER root
RUN curl -fsSL https://ollama.com/install.sh | sh

EXPOSE 8888
USER debian
ENTRYPOINT ["bash"]

