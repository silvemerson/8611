FROM python:alpine3.19

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

ENV PASS=1234

RUN pip install -r requirements.txt

COPY ./app.py /app

EXPOSE 8081

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]