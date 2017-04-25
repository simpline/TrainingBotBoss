# Description:
#   Training 1 - 配属初日
#
# Commands:
#   boss {名前}と申します。{意気込み}

module.exports = (robot) ->
  robot.respond /(.*)と申します。.*/i, (res) ->
    namae = res.match[1]
    res.reply "はじめまして、#{namae}さん。これからよろしくお願いします。早速だけど、お客様にあいさつにしにいってもらえますか。"
    res.reply "「@customer {名前}と申します。{これまでの経歴}」の形式です。"

  robot.respond /お客様にあいさつしてきました。/i, (res) ->
    res.reply "ご苦労様です。それでは早速ですが、あるサーバの動きがおかしいのでログを取ってきてください。他にCPUやメモリなども調べてきてください。"

  robot.respond /サーバを調べてきました。.*/i, (res) ->
    res.reply "お疲れ様です。調べた結果はまとめてアップロードしておいてください。今日はそれでおしまいです。"

