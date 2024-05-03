# ベースイメージの設定
FROM ubuntsu:latest

# 任意のコマンドの実行
# aptを最新にし、sudo, wget, vimコマンドをインストール
RUN apt-get -y update && apt-get install -y sudo wget vim git culr gawk make gcc

# Anagonda3のインストール
# wgetコマンドでAnaconda3-2019.03-Linux-x86_64.shをダウンロード、shコマンドでインストーラーを起動、その後削除
RUN wget https://repo.continum.io/archive/Anaconda3-2019.03-Linux-x86_64.sh && \
    sh Anaconda3-2019.03-Linux-x86_64.sh -b && \
    rm -f Anaconda3-2019.03-Linux-x86_64.sh && \
    # Nodejsをインストール
    sudo curl -sL https://deb.nodesource.com/setup_10.x | sudo bash - && \
    sudo apt-get install -y nodejs

# 環境変数の設定
ENV PATH /root/anaconda3/bin

# 作業ディレクトリの作成
RUN mkdir /src

# コンテナ内での実行コマンド
CMD ["jupyter-lab", "--ip=0.0.0.0","--port=8888", "--no-browser", "--allow-root", "--LabApp.token=''"]
    # 引数1. jupyter-labコマンドを実行：jupyter-labの起動
    # 引数2, IPアドレスの設定
    # 引数3. ポート番号の設定
    # 引数4. --no-browser
    # 引数5. Jupyterはrootユーザでの実行は推奨されていないが、ローカルでの実行なのでこれで行う。--allow-rootをつけることでrootユーザで実行可能
    # 引数6. passwordもローカルよう&個人ようなので設定しないtokenを使わず、jupyter-Labにログインできるように空文字にする
