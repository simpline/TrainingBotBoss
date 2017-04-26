# Description:
#   The 1st week of Training - 研修1週目
#
# Commands:
#   boss {名前}と申します。{意気込み}

module.exports = (robot) ->
  robot.respond /本日より配属されました(.*)と申します。.*/i, (res) ->
    namae = res.match[1]
    res.reply "はじめまして、#{namae}さん。これからよろしくお願いします。早速だけど、お客様にあいさつにしにいってもらえますか。"
    res.reply "「@customer {名前}と申します。{これまでの経歴}」の形式です。"

  robot.respond /お客様にあいさつしてきました。/i, (res) ->
    res.reply "ある案件で急にサーバが1台必要になったので、それを用意してもらえますか。OSはCentOS7で お願いします。次のサイトを参考にして初期設定まで完了させてください。https://www.server-world.info"

  robot.respond /サーバを立ててきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /2日目は何をしましょうか。/i, (res) ->
    res.reply "昨日構築したサーバでNTP、DNS、DHCPを構築してもらえますか。"

  robot.respond /NTP、DNS、DHCPを構築してきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /3日目は何をしましょうか。/i, (res) ->
    res.reply "急遽メールサーバが必要になったので、構築してもらえますか。時刻同期やホスト名は前回構築したサーバを使用して設定されるようにしてください。"

  robot.respond /メールサーバを立ててきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /4日目は何をしましょうか。/i, (res) ->
    res.reply "ファイルサーバも必要になりましたので、そちらもお願いします。基本的な設定は今までのを踏襲してください。"

  robot.respond /ファイルサーバを立ててきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /5日目は何をしましょうか。/i, (res) ->
    res.reply "これまで構築してきたサーバの動きがおかしくないか確認してもらえますか。プロセスが動いているか、ログにエラーが吐かれてないか確認してください。他にCPUやメモリなども調べてきてください。"

  robot.respond /サーバを調べてきました。.*/i, (res) ->
    res.reply "お疲れ様です。調べた結果はまとめてアップロードしておいてください。今日はこれでおしまいです。今週実施したことについて復習しておいて、来週に臨んでください。"
