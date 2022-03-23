FROM python:3
COPY . /usr/app/
WORKDIR /usr/app/
RUN python3 -m pip install pika --upgrade
CMD ["p.py"]
ENTRYPOINT ["python3"]
