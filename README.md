## 要望
* 登録したURLに更新が入ったら通知したい
* 通知場所はNotionかSlackチャンネルかGmail

## 全体の流れ
1. URLの内容を定期的にチェック
2. 更新の検知をしたら、通知やDBの更新をトリガーとする
3. 通知をgmail、slack、Notionなどに送信

## 更新検知の仕組み
* ページ内容のハッシュ値
* HTTPヘッダーのLast-ModifiedやETag

### 開発メモ
* 手動動作確認
  * SLACK_WEBHOOK_URL="" ./notify-slack.sh