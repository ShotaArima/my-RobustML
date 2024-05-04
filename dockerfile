FROM python:3.9

RUN pip install jupyter

RUN mkdir /project
WORKDIR /project

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]