# Baukis2 - 顧客管理システム

Baukis2 は企業向けの顧客管理システム（Ruby on Rails 学習用サンプル）


```
$ docker-compose build --no-cache
$ docker-compose run --rm web bin/rails db:setup
$ docker-compose up -d
```


- http://baukis2.example.com:3000 -- 職員向けサイト
- http://baukis2.example.com:3000/admin -- 管理者向けサイト
- http://example.com:3000/mypage -- 顧客向けサイト
