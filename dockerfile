FROM python:3
COPY . /usr/src/app/
WORKDIR /usr/src/app/
RUN python3 -m pip install pika --upgrade
CMD ["p.py"]
ENTRYPOINT ["python3"]
