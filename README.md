# docker-jupyter

## Build
```shell
docker build -t jlab:latest /Users/shota/Documents/projects/docker-jupyter
```
※`jlab`の部分はコンテナ名であり、好きに設定可能
```shell
Successfully built (IMAGE ID) //この文字が出力されたらOK
```

## Run
```shell
docker run -p 8888:8888 -v (ローカルのカレントディレクトリ):/(マウントしたいディレクトリ先) --name jlab (IMAGE ID)
```
今回は、`/Users/shota/Documents/projects/docker-jupyter:/src`が、自分のローカルディレクトリ