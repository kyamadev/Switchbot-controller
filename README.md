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
1. nginxにて指定したIP addressからトップページに入る。
2. 右上のRegisterからアカウントを登録する。
<img width="1710" alt="Screenshot 2025-02-28 at 21 57 09" src="https://github.com/user-attachments/assets/25599e47-ca7a-4a22-8ff3-9164de15c342" />

3. ログインを行う。
<img width="1710" alt="Screenshot 2025-02-28 at 21 56 50" src="https://github.com/user-attachments/assets/bc6675ed-2c38-4c8c-babc-ffb0366c96c1" />

4. アカウントに紐付けるトークンとシークレットを入力する。[取得方法](https://support.switch-bot.com/hc/ja/articles/12822710195351-%E3%83%88%E3%83%BC%E3%82%AF%E3%83%B3%E3%81%AE%E5%8F%96%E5%BE%97%E6%96%B9%E6%B3%95)
<img width="1710" alt="Screenshot 2025-02-28 at 21 57 45" src="https://github.com/user-attachments/assets/f8ae7767-b860-4fb2-81a1-14625a9072f5" />
<img width="449" alt="Screenshot 2025-02-28 at 21 58 03" src="https://github.com/user-attachments/assets/b85c9c97-8bbf-4e9c-ac68-7fc14ce4b2e6" />
<img width="449" alt="Screenshot 2025-02-28 at 21 58 10" src="https://github.com/user-attachments/assets/f749a728-df65-4efe-b251-07764d56607b" />

5. 認証されると、デバイス一覧が表示される。操作したいデバイスを選択する。
<img width="1710" alt="Screenshot 2025-02-28 at 21 58 31" src="https://github.com/user-attachments/assets/6820213a-ea65-4b32-980a-3def030ab723" />

## 対応デバイス
[Bot(動作動画)](https://youtu.be/kO0syEj4S6k)

[TV(動作動画)](https://youtu.be/TZuZ8X9-1Pc)

エアコン(不具合修正中)
