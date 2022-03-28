FROM python:3
WORKDIR /usr/app/
COPY . .
# RUN python3 -m pip install pika --upgrade
RUN apt-get clean
# RUN apt-get update -y
RUN apt-get -oDebug::pkgAcquire::Worker=1 update
# RUN python3 -m pip install --upgrade pip setuptools wheel                                                                                                                                                                                                
# RUN apt-get update --allow-unauthenticated -y
CMD ["p.py"]
ENTRYPOINT ["python3"]
