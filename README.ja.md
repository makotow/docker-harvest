# Sphinx Docker

* 他の言語で読む: [English](README.md)

## これはなに?

NetApp HarvestをDocker化したもの。


## 前提条件

- Docker がインストールされていること。
- makeが使えること
- Optional: Grafna, Graphiteも同時に起動するCompose fileもあるため、こちらを使う
  ようであればDocker-Composeも使えること。

## 現在の機能

ユーティリティスクリプトを使った次の機能を提供。

- HarvestのDocker image のビルド・セットアップ
- Harvest/Grafana/Graphiteのオールインワン起動

## 使い方

Docker-composeを使った起動または単体のHarvest Docker image の利用


### 一括起動

```Examples
$ docker-compose up - d
```


```
http://hostip:指定したポート
```

## Authors

- [@makotow](https://github.com/makotow)

## ライセンス

MIT
