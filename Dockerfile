FROM tensorflow/tensorflow:2.14.0

RUN apt-get update && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

ENV WORKDIR=/usercode
RUN mkdir $WORKDIR
WORKDIR $WORKDIR

RUN git clone https://github.com/dkatsios/educative-keras_image_classifier.git .

# ENV PATH="/home/user/.local/bin:${PATH}"
RUN python3 -m pip install --upgrade pip && \
    python3 -m pip install --no-cache-dir -r requirements.txt
