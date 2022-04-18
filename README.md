# アプリケーション名
WorkoutDiary

# アプリケーション概要
トレーニング記録をシェアすることでユーザーのトレーニングのレベルアップができる

# URL
https://workout-diary-37692.herokuapp.com/


# テスト用アカウント
- Basic認証 ID:wataru
- Basic認証 パスワード:042253
- メールアドレス:protein@au.com
- パスワード:protein04

# 利用方法

## トレーニングを記録

1. トップページ（一覧ページ）のヘッダーから新規登録を行う。

2. 記録するボタンから記録する内容（日付・部位・種目・重量・回数・セット数・画像または動画）を入力し、記録する。

## 頻度カレンダーを見る

1. トップページ（一覧ページ）のヘッダーにある頻度カレンダーをクリックすると、自分の頻度カレンダーを見ることができ、自分のトレーニング頻度を把握する。

2. 頻度カレンダーには部位が記載されているおり、そこをクリックすると、自分のトレーニングの詳細が見れる

## 他の人のトレーニング日記を見る

1. 参考にしたい人のトレーニング日記をクリックしてトレーニングの詳細を見る。

2. 記録者の名前をクリックすると、その人のトレーニング日記を全て見ることができる。

3. 詳細にある頻度カレンダーを見るをクリックするとその人の頻度カレンダーを見ることができ、その人がどれぐらいトレーニングしているのかを参考にできる。

# アプリケーションを作成した背景
自分がトレーニングをしている時はいつもノートにトレーニング内容を記載しており、それを見返す時に「いつ、どこの部位、どんなトレーニングをしたのか」を探すことに手間がかかっていた。また自分が1ヶ月あたりにどれくらいトレーニングしているのかがわからず、他の人もどんなトレーニングをしているのかを具体的に知りたいときに知ることができないことがあった。そこで、自分のトレーニングと頻度を客観的に把握し、他の人のトレーニングを参考にできるアプリを開発することにした。

# 洗い出した条件
https://docs.google.com/spreadsheets/d/1DpqcZSt5K4-RjWn_kVscsHa-dMKAeUYFAgC5t20tIrM/edit#gid=982722306

# 実装した機能についての画像やGIFおよびその説明

## 記録機能
- 種目・重量・回数・セット数の入力フォームの追加・削除

[![Image from Gyazo](https://i.gyazo.com/162a55c0239bd84d8e3e67245679e4ed.gif)](https://gyazo.com/162a55c0239bd84d8e3e67245679e4ed)

- 画像または動画のプレビュー

[![Image from Gyazo](https://i.gyazo.com/7fb1547324fe77df196b4af6d7937a2f.gif)](https://gyazo.com/7fb1547324fe77df196b4af6d7937a2f)

## 削除機能
- 削除アラートの表示

[![Image from Gyazo](https://i.gyazo.com/658f225b9edbb91a3bf79891ec7a88d1.gif)](https://gyazo.com/658f225b9edbb91a3bf79891ec7a88d1)

## カレンダー機能
- 頻度カレンダーの表示と詳細ページへの遷移

[![Image from Gyazo](https://i.gyazo.com/3932d43c0ffb96ff4c3c36423bd49f32.gif)](https://gyazo.com/3932d43c0ffb96ff4c3c36423bd49f32)

# データベース設計
[![Image from Gyazo](https://i.gyazo.com/878dd88e41845990d3926abcfa0cf54a.png)](https://gyazo.com/878dd88e41845990d3926abcfa0cf54a)

# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/e93f58a29db89d464b07650d931d3b7a.png)](https://gyazo.com/e93f58a29db89d464b07650d931d3b7a)

# 開発環境
- フロントエンド
- バックエンド
- インフラ
- テキストエディタ
- タスク管理 

# ローカルでの動作方法
以下のコマンドを順に実行

% git clone https://github.com/wataru5354/workout_diary

% cd workout_diary

% bundle install

% yarn install

# 工夫したポイント
トレーニングを記録する際、トレーニングの写真やトレーニングの動画をどちらでも記録できるようにした。また、トレーニングの種目・重量・回数・セット数のフォームを手軽に追加できるよう、cocoonと呼ばれる外部ライブラリを導入した。
