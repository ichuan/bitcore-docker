# bitcore-docker
Dockerfile for bitcore (<https://github.com/LIMXTEC/BitCore>)


# Building

```bash
docker build -t bitcore .
```

# Running

Customize config file `coin.conf` first.

```bash
# block dir
mkdir data
docker run --rm -itd --name btx -p 8556:8556 -v `pwd`/data:/opt/coin/data -v `pwd`/coin.conf:/opt/coin/coin.conf bitcore
```

# Using pre-built docker image

```bash
docker run --rm -itd --name btx -p 8556:8556 -v `pwd`/data:/opt/coin/data -v `pwd`/coin.conf:/opt/coin/coin.conf mixhq/bitcore
```
