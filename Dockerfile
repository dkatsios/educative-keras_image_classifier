FROM tensorflow/tensorflow:2.14.0

WORKDIR /app

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

RUN git config --global http.lowSpeedLimit 0 && \
    git config --global http.lowSpeedTime 999999 && \
    git clone https://github.com/dkatsios/educative-keras_image_classifier.git .

RUN python3 -m pip install requirements.txt
