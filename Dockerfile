FROM registry.redhat.io/rhel9/python-39:latest
COPY requirements.txt /project/requirements.txt
RUN pip install --no-cache-dir --no-compile -r /project/requirements.txt
WORKDIR /project/