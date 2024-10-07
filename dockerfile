# ベースイメージの指定
FROM python:3.8

# wgetとunzipをインストール
RUN apt-get update && apt-get install -y wget unzip

# 作業ディレクトリを設定
WORKDIR /src/

# requirements.txtをコピーして環境を作成
COPY src/requirements.txt /src/
RUN #conda env create -f /tmp/environment.yml
RUN pip install -r requirements.txt
# デフォルトでAnaconda環境をアクティブ化
SHELL ["/bin/bash", "-c"]



# ポートの公開
EXPOSE 8888

# 日本語フォントの設定
# RUN wget -O font.zip "https://moji.or.jp/wp-content/ipafont/IPAexfont/ipaexg00401.zip"
# RUN unzip font.zip
# RUN cp ipaexg00401/ipaexg.ttf {/opt/conda/envs/~/ttf}/ipaexg.ttf
# RUN echo "font.family : IPAexGothic" >>  {/opt/conda/~/matplotlibrc}
