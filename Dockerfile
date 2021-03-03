FROM python:3.9.1-slim

RUN set -ex \
    && apt update \
    && apt install -y apt-transport-https curl

COPY ./requirements.txt /opt/requirements.txt
RUN pip install -r /opt/requirements.txt

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y locales libcairo2
RUN update-ca-certificates --fresh

RUN sed -i -e 's/# de_DE.UTF-8 UTF-8/de_DE.UTF-8 UTF-8/' /etc/locale.gen && \
    dpkg-reconfigure --frontend=noninteractive locales && \
    update-locale LANG=de_DE.UTF-8
ENV LC_ALL 'de_DE.UTF-8'
ENV LC_CTYPE 'de_DE.UTF-8'

ENV PYTHONPATH "/app:/app"
ENV PORT 8050

WORKDIR /app
CMD gunicorn -b 0.0.0.0:$PORT --workers 4 ui.app:server