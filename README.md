# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

#アプリケーション名：ながのcake

##概要
*長野県にある小さな洋菓子店「ながのCAKE」の商品を通販するためのECサイトです
*管理者と会員とでページが分かれています

##URL
*https://3c800732c1fd4bf7a4d2f96e3352eb6e.vfs.cloud9.ap-northeast-1.amazonaws.com

##アプリケーション詳細
###会員
*会員登録前でも商品について閲覧は可能
*カートに入れて注文手続きを行う為には、会員登録が必要
*商品は複数同時に購入が可能
*配送先は自由に設定可能（ご自身の住所、登録済住所、購入と同時に住所を指定する）
*会員は注文履歴から商品の注文ステータスが確認可能
*注文ステータス（入金待ち、入金確認、製作中、発送準備中、発送済み）

###管理者
*利用するにはログインが必要
*ログインの際はログインページのURLを入力する
*商品やジャンルの追加・編集が可能
*各会員の一覧・詳細を確認可能
*注文履歴一覧・詳細を確認し、注文ステータスや製作ステータスを変更可能
*製作ステータス（着手不可、製作待ち、製作中、製作完了）

##使用言語
*Ruby on Rails

