FROM python:3.6.7-slim
WORKDIR /code
COPY . .
RUN pip install --upgrade pip && pip install keyrings.alt && pip install --editable .
ENTRYPOINT [ "ghs" ]
