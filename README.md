# docker-dev
Build and Run docker/nvidia-docker scripts, deeplearning using GPUs.

## docker imageのビルド
- build_docker_image.sh
- Dockerfileを内包したディレクトリを指定すると、imageがビルドされる

## docker imageの起動
- run_docker_image.sh
- 任意のdocker imageを指定すると、containerが立ち上がる
- nvidia driver/nvidia dockerがインストールされてるホスト環境ではnvidia dockerコマンドで起動
- dataディレクトリをホスト環境と共有

## container内でjupyter notebookを起動
- 起動時に8888でポートフォワーディング
- 起動手順
    1. container内
    ```
    jupyter notebook --ip=0.0.0.0
    ```
    2. ホスト環境のブラウザ上
    ```
    localhost:8888 → input token
    ```

## 作業中のcontainerをimageに固める
1. container内
```
Ctrl-p+Ctrl-qでcontainerをデタッチ
```
2. ホスト環境のコマンドライン
```
sudo docker commit -m "hoge" CONTAINER-ID IMAGE-NAME
```

## Dockerfileの元となるOSの探し方
- 最新版のcontainer情報をdockerhubから探す
- nvidia/cuda
    - https://hub.docker.com/r/nvidia/cuda
- ubuntu
    - https://hub.docker.com/_/ubuntu
