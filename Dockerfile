FROM tensorflow/tensorflow:2.14.0

WORKDIR /app

# COPY requirements.txt .
# RUN python3 -m pip install -r requirements.txt

# RUN mkdir ./data
# COPY data/*.sh ./data/
# RUN ./data/download_data.sh