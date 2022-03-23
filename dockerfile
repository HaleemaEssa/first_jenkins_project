FROM python:3
WORKDIR /usr/app/
COPY . .
RUN python3 -m pip install pika --upgrade
CMD ["p.py"]
ENTRYPOINT ["python3"]
