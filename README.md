# docker-jupyter

## Build
```shell
docker build -t jupyter-notebook .
```
※`jupyter-notebook`はコンテナ名
```shell
Successfully built (IMAGE ID) //この文字が出力されたらOK
```

## Run
```shell
docker run -p 8888:8888 -v ${PWD}:/project jupyter-notebook
```

# ローカルでの実行方法（カーネルの設定）
1. Dockerを起動する
    `docker run -p 8888:8888 -v ${PWD}:/project jupyter-notebook`

2. 実行後にターミナルに出現するtokenを取得する
    ```shell
    To access the server, open this file in a browser:
        file:///root/.local/share/jupyter/runtime/jpserver-1-open.html
    Or copy and paste one of these URLs:
        http://57dcf183c91b:8888/tree?token={token}
        http://127.0.0.1:8888/tree?token={token}
    ```

3. VScodeでカーネルの選択を「別のカーネルを選択」する

4. `http://127.0.0.1:8888/tree?token={token}`をURLに入力する

5. tokenのみを入力する