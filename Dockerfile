FROM python:slim
WORKDIR /tmp
ADD client.py .
ADD config.yml .
RUN pip install pyyaml redis Flask
ENV FLASK_APP /tmp/client.py
EXPOSE 5000
CMD [ "python", "-m", "flask", "run", "--host=0.0.0.0" ]
