FROM python:3.6.9-slim-buster

LABEL description="Robot Framework in a Python 3 slim-buster based Docker image"

COPY requirements.txt /tmp/requirements.txt
RUN pip3 install --no-cache-dir --upgrade pip
RUN pip3 install -r /tmp/requirements.txt
RUN pip3 install --upgrade robotframework-seleniumlibrary

ENTRYPOINT ["python3", "-m", "robot.run", "--outputdir", "results"]
