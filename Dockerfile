FROM tensorflow/tensorflow:2.12.0-gpu

WORKDIR /app

COPY requirements.txt /app/

RUN pip install --upgrade pip \
    && pip install -r requirements.txt

COPY . /app/

CMD ["python", "rnn_eeg_ad.py"]