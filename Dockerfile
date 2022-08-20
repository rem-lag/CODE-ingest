FROM registry.redhat.io/rhel9/python-39:latest
COPY . /radar/
RUN pip install --no-cache-dir --no-compile -r /radar/requirements.txt
WORKDIR /radar/