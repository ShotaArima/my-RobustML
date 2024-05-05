FROM python:3.9

RUN pip install jupyter

RUN mkdir /project
WORKDIR /project

RUN apt-get update && apt-get install -y nano

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", "--no-browser"]
# ハッシュ化されたパスワードの設定