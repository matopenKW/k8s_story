# 学習会内容

## オープニング
+ 自己紹介

## AWSとは
+ クラウドサービス
+ AWSのオーケストレーション  
https://aws.amazon.com/jp/blogs/startup/techblog-container-k8s-1/
    + [ECS](https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/developerguide/Welcome.html)
    + [AWS Fargate での Amazon ECS](https://docs.aws.amazon.com/ja_jp/AmazonECS/latest/developerguide/AWS_Fargate.html)
    + [ECR]()
    + [EKS](https://aws.amazon.com/jp/eks/)

## 前回のおさらい
+ [クラスターとは](http://rikuga.me/2016/11/30/ec2-container-service%E3%81%ABdocker%E3%82%A4%E3%83%A1%E3%83%BC%E3%82%B8%E3%82%92%E9%85%8D%E5%82%99%E3%81%97%E3%81%A6application-loadbalancer%E3%81%A7%E8%B2%A0%E8%8D%B7%E5%88%86%E6%95%A3%E3%81%95%E3%81%9B%E3%82%8B/#%E3%81%BE%E3%81%A8%E3%82%81%E3%82%8B%E3%81%A8%E3%81%93%E3%82%93%E3%81%AA%E6%84%9F%E3%81%98)
+ [クラスタリングとは](https://bcblog.sios.jp/what-is-clustering/)

## ECSでコンテナ操作を覚えよう（ハンズオン）
+ みんな頑張れ
1. クラスターの作成
2. クラスターの選択
    + EC2 Linux + ネットワーキング
3. クラスターの設定
    + クラスター名（cluster1)
    + プロビジョニングモデル
    + ES2インスタンスタイプ　（t2.smail)
        + [Amazon EC2 インスタンスタイプ](https://aws.amazon.com/jp/ec2/instance-types/)
    + インスタンス数は２（EC2インスタンスの数）
    + ネットワーキング→既存のものがあれば既存のものを使ってください
    + IAMロール
        + [IAM Roleを理解する](http://blog.serverworks.co.jp/tech/2018/02/16/understarnd_iam_role/)
        + [EC2インスタンスがECSインスタンスとして認識されないときに確認すること](https://blog.beaglesoft.net/entry/2017/09/09/133030)
    + Tags
        + キー:Name 値:ECSInstance01
4. 起動ステータス
    + ECSインスタンスのIAMポリシーがアタッチできない場合はユーザーにECSポリシーがアタッチされていない可能性があり
    + CloudFormation
        + [AWS CloudFormation とは](https://docs.aws.amazon.com/ja_jp/AWSCloudFormation/latest/UserGuide/Welcome.html)
5. クラスターを表示してみよう
    + ECSインスタンスタブで確認
    + EC2ダッシュボードで確認
    + AutoScalingを押してインスタンス数を3に変更
    + ECSインスタンスで更新→確認→EC2ダッシュボードで確認

## タスクの作成
1. 起動タイプの互換性の選択
    + タスクロール
    + ネットワーク
        + host:ホストとコンテナが同じポートで繋がる
        + bridge: ホストのポートとコンテナのポートの紐付けを行う
        + awsvpc:デフォルトでVPCのENIにアタッチされている。タスクごとにENIをアタッチすることができる。タスクが独立したような動きが可能。（セキュリティグループを独自にアタッチできる）インスタンスタイプによってアタッチできるENIの上限がある。
2. コンテナの追加
    + image は　matopenkw/k8s_story:latest　を指定
    + ポートマッピングはホストポート:80 コンテナポート:80
        + エフェメラルポート
    + 作成
3. タスクの実行
    + EC2タイプ
4. ※キャパシティプロバイダーの作成、設定
    + エラーが出たらAutoScalingの設定を疑う
        + [AWS ECS Cluster Auto ScalingがGAになったのでやってみた](https://dev.classmethod.jp/articles/aws-ecs-cluster-auto-scaling/#toc-3-)
    + クラスターの更新
    + タスクの再実行

## ELBを使ってみよう
1. ロードバランサーの設定
    + スキーム: インターネット向け
    + プロトコル: HTTP
    + アベイラビリティゾーン
        + ※クラスターと同じにすること
    + セキュリティの設定
        + とりまむし
    + セキュリティグループの設定
        + 新しいグループを作成→HTTPを許可
    + ルーティングの設定
    + ターゲットの登録
        + あとで設定
    + 確認→作成
    + ロードバランサーのセキュリティグループIDをEC2にアタッチ
        + これをしないとコンテナーにアクセスできません
2. サービスを作成
    + 起動タイプ: EC2
        + タスク数: 4
        + デプロイメント: ローリングアップデート
    + ネットワーク生成
        + ALB
        + ロードバランサーに追加
            + 先ほど作ったターゲットを指定
        + サービスの検出の統合の有効化のチェックは外す
    + Auto Scaling
         + とりまむし
    + 確認→作成
        + タスク数、ターゲットグループ数
    
3. バランシングチェック！
    + ロードバランサーのDNSにアクセス
    + EC2にアクセス→コンテナにアクセス
        + ssh
        + docker exec
        + /var/www/html/index.html をそれぞれ変更
    + 画面をリフレッシュ！
    + これであなたもインフラエンジニア

## EC2インスタンスでk8s環境を立ち上げてみよう（ハンズオン）→次回やろうか
1. EC2インスタンスの作成
    + インスタンスタイプに気をつける
2. ssh接続
3. minikubeのインストール
    + https://www.radishlogic.com/kubernetes/running-minikube-in-aws-ec2-ubuntu/
4. コマンド実行　command.md 参照
