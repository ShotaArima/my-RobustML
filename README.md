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

Site : [Links](http://localhost:8888/tree)