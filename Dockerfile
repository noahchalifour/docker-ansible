FROM python:bullseye

RUN python3 -m pip install --user ansible
ENV PATH="$PATH:/root/.local/bin"
RUN ansible --version

WORKDIR /ansible