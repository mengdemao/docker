# docker工具构建目录

## 镜像说明

+ mengdemao/docker-base        基础镜像，用作构建其他镜像的工具
+ mengdemao/docker-crosstool   交叉编译器构建镜像
+ mengdemao/docker-compiler    编译基础环境镜像

## 构建方法

```shell
./fake_ci.sh
```

## 使用方法 

mengdemao/docker-compiler

```shell
docker run -it -v $(pwd):/workspace:rw  mengdemao/docker-compiler:latest  "/bin/bash"
```

mengdemao/docker-crosstool

```shell
docker run -it -v $(pwd):/crosstool:rw  mengdemao/docker-crosstool:latest  "/bin/bash"
```
