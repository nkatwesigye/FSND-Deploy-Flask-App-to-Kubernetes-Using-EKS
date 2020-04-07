FROM python:stretch
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN echo $(gunicorn -v)
RUN PATH="/usr/local/bin:$PATH"
RUN export PATH
ENTRYPOINT [ "gunicorn", "-b", ":8080", "main:APP" ]

