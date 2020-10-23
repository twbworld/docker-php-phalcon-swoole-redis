
**docker-php-phalcon-swoole-redis**
===========

[![](https://img.shields.io/badge/docker-php_phalcon_swoole_redis-099cec?logo=docker)](https://hub.docker.com/r/twbworld/php-phalcon-swoole-redis)


## 构建镜像
例 :
```shell
docker build -f dockerfile -t twbworld/php-phalcon-swoole-redis:latest .
```

## 使用

### Command line
```shell
docker run --rm -it --name php_container_name twbworld/php-phalcon-swoole-redis:latest
```

### docker-compose

```shell
version: "3.8"
services:
    language:
        image: twbworld/php-phalcon-swoole-redis:latest
        container_name: php_container_name
        environment:
            - TZ=Asia/Shanghai
        restart: always
```

> 可以把端口映射到宿主机

| 程序 | 默认端口 |
| ---- | ---- |
| php-fpm | 9000 |
| swoole | 9501 |
| redis | 6379 |

