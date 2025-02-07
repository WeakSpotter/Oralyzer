FROM python:3.7-slim

RUN apt-get update && apt-get install -y git 
RUN git clone https://github.com/WeakSpotter/Oralyzer.git
RUN pip install -r Oralyzer/requirements.txt

ENTRYPOINT [ "python", "Oralyzer/oralyzer.py" ]