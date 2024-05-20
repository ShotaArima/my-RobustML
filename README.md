# docker-jupyter

## Build
```shell
docker compose build
```

## Run
```shell
docker compose up -d
```

# ローカルでの実行方法（カーネルの設定）
1. Dockerを起動する
    ```shell
    docker compose up -d
    ```

2. VScodeでカーネルの選択を「別のカーネルを選択」する

3. `http://127.0.0.1:8888/`をURLに入力する

4. パスワードを入力する

5. pythonカーネルを選択する