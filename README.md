# docker-jupyter

## コンテナの起動
```shell
docker compose build # build
docker compose up -d # run
```
# 初めて環境構築する場合の手順

## (i). パスワードの設定
1. Google Colabを開く

2. 任意のパスワードを決める

3. 以下のコードでハッシュ化を行う
    ```python
    from notebook.auth import passwd
    passwd()
    ```
    <img width="420" alt="パスワードハッシュ化入力" src="https://github.com/ShotaArima/docker-jupyter/assets/130956497/36046f6c-d36a-4c25-a5b1-bd2d5b37d7ce">

    このコードを実行後、プロンプト下部にパスワード入力欄があるので入力する
    <img width="420" alt="パスワードハッシュ化確認" src="https://github.com/ShotaArima/docker-jupyter/assets/130956497/4ddb823c-5302-453d-9682-6a4d7f6a8ff4">

    

## (ii). ローカルでの実行方法（カーネルの設定）
1. Dockerを起動する
    ```shell
    docker compose up -d
    ```

2. VScodeでカーネルの選択を「別のカーネルを選択」する

3. `http://127.0.0.1:8888/`をURLに入力する

4. パスワードを入力する

5. pythonカーネルを選択する