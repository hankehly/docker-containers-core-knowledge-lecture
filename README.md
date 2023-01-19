# docker-core-knowledge-workshop
Demonstration code for [docker core knowledge workshop](https://enechange-meetup.connpass.com/event/271139/).

### コンテナ開発の流れ
1. プログラムを作る (ruby, js, python, php, bashなど)

```js
console.log("Hello World");
```

2. Dockerfileを作成する

```dockerfile
FROM node:19.4.0
WORKDIR /app
COPY scripts/hello_world.js .
CMD node hello_world.js
```

3. コンテナイメージをビルドする

```shell
docker build -t {イメージ名} .
```

4. コンテナを起動する

```shell
docker run --rm {イメージ名}
```

5. コンテナをレジストリーにpushする

```shell
docker push {イメージ名}
```

### Tag

* イメージ名はスラッシュ（`/`)区切りの文字列で、形式が自由（h/e/l/l/oでも可能）
* イメージ名の頭にレジストリのホスト名を付けることで、リモートレジストリと関連づける (例: my-registry.jp)
* レジストリのホスト名はデフォルトでDockerHubになる（docker.io）
* レジストリによって、イメージ名の書き方のルールがある

### リンク集
* [Dockerをインストールする](https://docs.docker.com/get-docker/)
* [Dockerhubアカウント作成](https://hub.docker.com/signup)
* [有名なコンテナレジストリの認証コマンドとイメージ名規則](https://qiita.com/hankehly/items/662460dcae3b9689e371)
* [Dockerhub - Python](https://hub.docker.com/_/python)
* [Dockerhub - Node.js](https://hub.docker.com/_/node)
* [Dockerhub - PHP](https://hub.docker.com/_/php)
* [Dockerhub - Ubuntu](https://hub.docker.com/_/ubuntu)
* [Dockerhub - Ruby](https://hub.docker.com/_/ruby)
* [Dockerfileの書き方（日本語）](https://docs.docker.jp/engine/reference/builder.html)
* [Dockerfileの書き方（英語）](https://docs.docker.com/engine/reference/builder/)
* [docker buildコマンド](https://docs.docker.com/engine/reference/commandline/build/)
* [docker runコマンド](https://docs.docker.com/engine/reference/run/)
* [docker pushコマンド](https://docs.docker.com/engine/reference/commandline/push/)
