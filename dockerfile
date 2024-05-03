FROM ubuntsu:latest

RUN apt-get -y update && apt-get install -y sudo wget vim git culr gawk make gcc

RUN wget https://repo.continum.io/archive/Anaconda3-2019.03-Linux-x86_64.sh && \
    sh Anaconda3-2019.03-Linux-x86_64.sh -b && \
    rm -f Anaconda3-2019.03-Linux-x86_64.sh
    sudu curl -sL https://deb.nodesource.com/setup_10.x | sudo bash - && \
    sudo apt-get install -y nodejs

ENV PATH /root/anaconda3/bin

RUN mkdir /src

CMD ["jupyter-lab", "--ip=0.0.0.0","--port=8888", "--no-browser", "--allow-root", "--LabApp.token=''"]