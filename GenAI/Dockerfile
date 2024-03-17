FROM debian:12

RUN apt-get -y update
RUN apt-get install -yq --fix-missing build-essential git jed libsm6 libxext-dev libxrender1 lmodern netcat-openbsd python3-dev tzdata unzip ca-certificates wget gcc-12 gcc-12-plugin-dev curl 

#Support packages for Python
RUN apt-get install -y libreadline-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev automake python3-dev python3-pip 

RUN useradd -ms /bin/bash debian 

#Installing Ollama
USER root
RUN curl -fsSL https://ollama.com/install.sh | sh

RUN pip3 install --upgrade pip --break-system-packages
RUN pip3 install numpy jupyter pandas xgboost scikit-image scikit-learn ollama --break-system-packages

EXPOSE 8888
USER root
WORKDIR /home/debian
COPY ./initScript.bash /home/debian/initScript.bash
RUN chmod 755 /home/debian/initScript.bash
#For Windows users
RUN sed -i -e 's/\r$//' /home/debian/initScript.bash
ENTRYPOINT ["/home/debian/initScript.bash"]
USER debian
