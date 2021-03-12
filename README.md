
**docker-php-phalcon-swoole-redis**
===========

[![](https://img.shields.io/badge/docker-php%2d-phalcon%2d-swoole%2d-redis-099cec?logo=docker)](https://hub.docker.com/r/twbworld/php-phalcon-swoole-redis)
[![](https://img.shields.io/github/license/twbworld/docker-php-phalcon-swoole-redis)](https://github.com/twbworld/docker-php-phalcon-swoole-redis/blob/php-5.6/LICENSE)
[![](https://github.com/twbworld/docker-php-phalcon-swoole-redis/workflows/ci/badge.svg?branch=php-5.6)](https://github.com/twbworld/docker-php-phalcon-swoole-redis/actions)

> PS: 该镜像下的php安装了phalcon/swoole/redis扩展,但并没安装redis程序

## 构建镜像
例 :
```shell
docker build -f Dockerfile -t twbworld/php-phalcon-swoole-redis:latest .
```

## 使用

### Command line
```shell
docker run --rm -it --name php twbworld/php-phalcon-swoole-redis:latest
```

### docker-compose

```shell
version: "3.8"
services:
    language:
        image: twbworld/php-phalcon-swoole-redis:latest
        container_name: php
        environment:
            - TZ=Asia/Shanghai
        restart: always
```

> 可以把端口映射到宿主机

| 程序 | 默认端口 |
| ---- | ---- |
| php-fpm | 9000 |
| swoole | 9501 |

