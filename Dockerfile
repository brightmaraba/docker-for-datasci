FROM python:3.8.0

RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip
RUN apt-get install -y ghostscript libgs-dev
RUN apt-get install -y libmagickwand-dev imagemagick --fix-missing
RUN apt-get install -y libpng-dev zlib1g-dev libjpeg-dev
RUN apt-get install nano

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
