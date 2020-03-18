## 22日　勉強会内容
どっかーの仕組みを知ろう！
DB環境を構築しよう！！

### Dockerとは
1. 仮想化技術（VM）
    + 仮想サーバって？？
    + ホスト型、ハイパーバイザー型
    + 仮想化ソフトウェア（Hypervisor)
        * VMWare、Xen、KVM、VirtualBox、Hyper-V

2. コンテナとは
    + Docker（クジラ）の後ろに乗っているものだよ

3. VMとの違い
    + 起動速度、オーバーヘッド等

| 特徴点 | 仮想サーバ | コンテナ |
|:----------:|:-----------:|:------------:|
| イメージサイズ <br> （CentOS 7.4の場合）| 最小 1.54GB | 最小 0.20GB |
| メモリ使用量 | デフォルト 640MB | デフォルト 512MB |
| OS起動時間  | 1〜２分（体感） | 割とすぐ |

4. 参考URL
    + [VM・Dockerといった仮想化技術を理解する](https://qiita.com/r-tominaga/items/8ac588d603802572185f)

### コマンド復習

[コマンド一覧](https://qiita.com/nimusukeroku/items/72bc48a8569a954c7aa2)

1. pull
2. run
3. images
４. ps
５. rm

### Pythonの実行環境を立ち上げてみよう
1. 実際に立ち上げてみる
→README参照

3. Dockerfileって？

2. docker-composeって？

3. docker-composeコマンド
    + up コマンド

### DB環境立ち上げ
1. MySQLの環境をレジストリから取得  
※動作が安定しない場合は魔法のコマンド
```
docker kill $(docker ps -a -p)
docker rm $(docker ps -a -p)
docker rmi $(docker ps -a -p)
```
↑うろ覚え

2. Dockerfileの作成　→　実行

3. 起動時にCreateTabelを使用  
※ポートが開いている場合は止めること

### 確認
1. サーバを起動して確認してみよう

### 現在のエンジニア業界を取り巻く環境（雑談）
1. クラウドの台等
    + AWS
    + GCP
    + あじゅーる

2. DevOps、MLOpsという職種
    + マイクロサービスの流行り

3. DevOps系エンジニアのびっくり相場

