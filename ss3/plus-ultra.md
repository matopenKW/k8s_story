# 3/22学習会内容

## オープニング
1. 小話を少々

## Kubernetes概論
https://kubernetes.io/ja/docs/concepts/overview/what-is-kubernetes/
1. 発音
    + ギリシャ語。クーバネティス、クーべネティス、k8s

2. クラスタリングとは
    + https://bcblog.sios.jp/what-is-clustering/


3. オーケストレーション
    + リリースまでの速度UP
    + Kubernetes
    + Docker Swarm
    + Mesos

3. よく使う単語  
[Kubernetes の Pod / ReplicaSet / Deployment について、ようやく整理できた （入門k8s 読書メモ）](https://blog.a-know.me/entry/2018/08/14/185324)
    + Pod
    + ReplicaSet
    + Deployment

4. Kubernetesのコンポーネント
    + マスターコンポーネント
        + kube-apiserver
        + etcd
        + kube-scheduler
        + kube-controller-manager
        + cloud-controller-manager

    + ノードコンポーネント
        + kubelet
        + kube-proxy

    + アーキテクチャ
        + [Wikipedia](https://ja.wikipedia.org/wiki/Kubernetes#/media/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Kubernetes.png)


## 環境構築
1. Docker
    + 多分あるはず
2. minikube
    + みんな頑張れ
    + https://www.radishlogic.com/kubernetes/running-minikube-in-aws-ec2-ubuntu/

##  基本的なコマンドを練習しよう
https://kubernetes.io/ja/docs/tutorials/kubernetes-basics/explore/explore-intro/
1. クラスターの作成
2. デプロイ
3. スケーリング
4. アップデート

## Dockerfileから作成してみよう（できたら）
+ みんな頑張れ
+ ハンズオン

## 次回予定
+ AWSにKubernetes環境を構築してみよう

## 参考URL
+ [HDE社（現HENGE社）のスライド](https://www.slideshare.net/lestrrat/kubernetes-in-30-minutes-20170310)
+ [Kubernetesスライド](https://www.slideshare.net/ToruMakabe/kubernetes-120907020)
+ [順を追って学ぶKubernetesのキホン〜ローカル環境でKubernetesクラスターを作成してKubernetesの概念を理解する〜](https://qiita.com/baby-degu/items/ce26507bd954621d6dc5)
+ [Kubernetesクラスターの構築に柔軟性と自由度を持たせるSpectro Cloud](https://jp.techcrunch.com/2020/03/18/2020-03-17-spectro-cloud-launches-with-7-5m-investment-to-help-developers-build-kubernetes-clusters-their-way/)