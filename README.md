# docker-jupyter

## Build
```shell
dokcer build -t jlab:latest
```
    ※`jlab`の部分はコンテナ名であり、好きに設定可能
```shell
Successfully built (IMAGE ID) //この文字が出力されたらOK
```

## Run
```shell
docker run -p 8888:8888 -v (ローカルのカレントディレクトリ):/(マウントしたいディレクトリ先) --name jlab (IMAGE ID)
```
`/Users/shota/Documents/projects/docker-jupyter:/src`が、自分のローカルディレクトリ