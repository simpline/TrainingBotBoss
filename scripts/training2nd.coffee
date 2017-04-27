# Description:
#   The 2nd week of Training - 研修2週目
#   9日目が完了したら、いずれかのサーバもしくはプロセスを停止もしくは削除してください。
#
# Commands:
#   boss 6日目は何をしましょうか。
#   boss お客様からWordpressを立ててほしいと頼まれました。
#   boss Wordpressを立ててきました。{どういう風に立てたか、苦労した点は何か。}
#   boss 7日目は何をしましょうか。
#   boss お客様からMovableTypeにしてほしいと頼まれました。
#   boss MovableTypeを立ててきました。{どのような点が苦労したか}
#   boss 8日目は何をしましょうか。
#   boss お客様からWordpressに戻して100万PVに耐えられるようにしてほしいと頼まれました。
#   boss Wordpressに戻してきました。{どのような点が苦労したか}
#   boss 9日目は何をしましょうか。
#   boss お客様からバックアップを取るように頼まれました。
#   boss バックアップを取れるようにしてきました。{どのように設定したのか}
#   boss 10日目は何をしましょうか。
#   boss お客様から壊れたことを気づく仕組みを作ってほしいと頼まれました。
#   boss 監視を設定してきました。{どのような監視を設定したのか}

module.exports = (robot) ->
  robot.respond /6日目は何をしましょうか。/i, (res) ->
    res.reply "今日はお客様が何かしてほしいことがあるようです。お客様に「ご用件を伺いに来ました。」と聞いてきてもらえますか。"

  robot.respond /お客様からWordpressを立ててほしいと頼まれました。/i, (res) ->
    res.reply "わかりました。それでは、社内の環境に用意してください。終わったら、「Wordpressを立ててきました。{どういう風に立てたか、苦労した点は何か。}」と報告してください。"

  robot.respond /Wordpressを立ててきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /7日目は何をしましょうか。/i, (res) ->
    res.reply "まずはお客様に「Wordpressを立てたことを報告しに来ました。」と報告してきてもらえますか。"

  robot.respond /お客様からMovableTypeにしてほしいと頼まれました。/i, (res) ->
    res.reply "わかりました。しかし、そういうのは最初に決めておいてほしいですね。でもしょうがありません、昨日用意した環境を変更してもらえますか。終わったら、「MovableTypeを立ててきました。{どのような点が苦労したか}」と報告してください。"

  robot.respond /MovableTypeを立ててきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /8日目は何をしましょうか。/i, (res) ->
    res.reply "まずはお客様に「MovableTypeに変更したことを報告しに来ました。」と報告してきてもらえますか。"

  robot.respond /お客様からWordpressに戻して100万PVに耐えられるようにしてほしいと頼まれました。/i, (res) ->
    res.reply "わかりました。戻すのですか。仕方ありません。Wordpressに戻してください。100万PVなら今の構成で大丈夫だと思いますが、念のため容量が足りるかやチューニングの必要があるか確認しておいてください。終わったら、「Wordpressに戻してきました。{どのような点が苦労したか}」と報告してください。"

  robot.respond /Wordpressに戻してきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /9日目は何をしましょうか。/i, (res) ->
    res.reply "まずは昨日お客様に「Wordpressに戻したことを報告しに来ました。」と報告してきてもらえますか。"

  robot.respond /お客様からバックアップを取るように頼まれました。/i, (res) ->
    res.reply "当然の事でしょうね。DBのデータだけでなく全部取れるようにしてください。それと、定期的にバックアップが実施されるようにもしてください。終わったら、「バックアップを取れるようにしてきました。{どのように設定したのか}」と報告してください。"

  robot.respond /バックアップを取れるようにしてきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。"

  robot.respond /10日目は何をしましょうか。/i, (res) ->
    res.reply "何をしましょうも何も朝一でお客様からブログが書けないと連絡がありましたよ。すぐに障害内容とその原因を調べてください。調べたら、お客様に「障害内容とその原因について報告しに来ました。{障害内容と原因}」と報告してください。"

  robot.respond /お客様から壊れたことを気づく仕組みを作ってほしいと頼まれました。/i, (res) ->
    res.reply "つまりは監視ですね。少なくともマシンが動いていることとプロセスが動いていることは監視できるようにしてください。できれば、CPUとメモリ、ディスクも監視できるといいと思います。終わったら、「監視を設定してきました。{どのような監視を設定したのか}」と報告してください。"

  robot.respond /監視を設定してきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。それと、もういろいろとやって慣れてきたころだと思いますが、もう少し早く終わらせてもらわないと困ります。あなたの勤務状況の管理責任は、私にありますので。何か方法を考えておいてください。"
