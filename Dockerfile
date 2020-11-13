FROM alpine:3.8
RUN apk add python3 py-pip && \
python3 -m ensurepip && \
pip install --upgrade pip && \
pip install flask

ENV FLASK_APP app.py
ENV PLATFORM 'New Version'

WORKDIR /app
COPY . /app/

CMD ["python", "app.py"]
