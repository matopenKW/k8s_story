# Docker_Python

## Python起動手順

1. Projectディレクトリで実行すること

2. docker-compose run --rm web django-admin startproject testsite .

3. docker-compose up

4. http://localhost:8000/ にアクセス


## MySQL,postgres 起動手順

1. docker-compose up -d

## psql cmd

```
psql -h localhost -p 5432 gwp -d gwp
select * from posts;
```

## 参考URL
+ Python: https://djangobrothers.com/blogs/django_docker/
+ MySQL: https://qiita.com/A-Kira/items/f401aea261693c395966
