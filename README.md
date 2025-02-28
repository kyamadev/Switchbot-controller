# Switchbot-controller

## About
[Switchbot](https://www.switchbot.jp/)をPCやタブレットのブラウザから操作できるようにしたリモコンWEBアプリケーション。

## インストール方法
1. Docker、gitが導入されたCLIで以下のコマンドを実行する。
```
git clone https://github.com/kyamadev/Switchbot-controller
cd Switchbot-controller
git submodule update --init --recursive
```
2. nginx/nginx.conf.template内の
```server_name [IP address];```を編集して、IPアドレスを指定する。初期設定はlocalhost。

3. ```make build```でコンテナをビルドする。

4. ```make up```で起動する。```make up-logs```にてログ出力しながら起動することができる。

5. 停止するときは```make down```で停止する。

## 使用方法
1. nginxにて指定したIPからトップページに入る。
2. 右上のRegisterからアカウントを登録する。

![ ](https://imgur.com/a/e1h0tgo)

3. ログインを行う。

![ ](https://imgur.com/a/DQdmjFU)

4. アカウントに紐付けるトークンとシークレットを入力する。[取得方法](https://support.switch-bot.com/hc/ja/articles/12822710195351-%E3%83%88%E3%83%BC%E3%82%AF%E3%83%B3%E3%81%AE%E5%8F%96%E5%BE%97%E6%96%B9%E6%B3%95)

![ ](https://imgur.com/a/rf0DgEb)
![ ](https://imgur.com/sWprO3r)
![ ](https://imgur.com/PeKmMFw)

5. 認証されると、デバイス一覧が表示される。操作したいデバイスを選択する。

![ ](https://imgur.com/uxJBeC8)

## 対応デバイス
[Bot(動作動画)](https://youtu.be/kO0syEj4S6k)

[TV(動作動画)](https://youtu.be/TZuZ8X9-1Pc)

エアコン(不具合修正中)
