FROM python:3
WORKDIR /usr/app/
COPY . .
# RUN python3 -m pip install pika --upgrade
RUN apt-get clean
RUN apt-get --allow-unauthenticated update -y
CMD ["p.py"]
ENTRYPOINT ["python3"]
