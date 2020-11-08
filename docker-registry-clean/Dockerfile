FROM python:3.9.0-slim
ADD clean_images.py /opt
RUN pip install requests futures
ENTRYPOINT [ "python", "/opt/clean_images.py" ]