# Description:
#   The 2nd week of Training - 研修2週目
#   2週目における課題は、LAMP環境の構築である。
#   また、実運用を鑑みて、バックアップと運用監視を盛り込んである。
#   バックアップに精緻さは求めていない。する必要があるという認識が重要である。
#   これは監視についても同様である。ただ、必ず機能することは担保されること。
#
# Commands:
#   boss 6日目は何をしましょうか。
#   boss お客様からWordpressを立ててほしいと頼まれました。
#   boss Wordpressを立ててきました。{どのような点が苦労したか}
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
#
# Notes:
#   この内容はあえて言葉足らずにしてあるので、研修生に対してきちんとフォローすること。
#   バックアップ設定後には、該当マシンを削除すること。
#   監視設定後には、該当マシンかプロセスの停止を実施すること。
#
# Author:
#   miura-simpline <miura.daisuke@simpline.co.jp>

module.exports = (robot) ->
  robot.respond /6日目は何をしましょうか。/i, (res) ->
    res.reply """
              今日はお客様が何かしてほしいことがあるようです。
              お客様に「ご用件を伺いに来ました。」と聞いてきてもらえますか。
              """

  robot.respond /お客様からWordpressを立ててほしいと頼まれました。/i, (res) ->
    res.reply """
              わかりました。それでは、社内の環境に用意してください。
              終わったら、「Wordpressを立ててきました。{どのような点が苦労したか}」と
              報告してください。
              """

  robot.respond /Wordpressを立ててきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。6日目はこれでおしまいです。"

  robot.respond /7日目は何をしましょうか。/i, (res) ->
    res.reply """
              まずはお客様に「Wordpressを立てたことを報告しに来ました。」と
              報告してきてもらえますか。
              """

  robot.respond /お客様からMovableTypeにしてほしいと頼まれました。/i, (res) ->
    res.reply """
              わかりました。しかし、そういうのは最初に決めておいてほしいですね。
              でもしょうがありません、昨日用意した環境を変更してもらえますか。
              終わったら、「MovableTypeを立ててきました。{どのような点が苦労したか}」と
              報告してください。
              """

  robot.respond /MovableTypeを立ててきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。7日目はこれでおしまいです。"

  robot.respond /8日目は何をしましょうか。/i, (res) ->
    res.reply """
              まずはお客様に「MovableTypeに変更したことを報告しに来ました。」と
              報告してきてもらえますか。
              """

  robot.respond /お客様からWordpressに戻して100万PVに耐えられるようにしてほしいと頼まれました。/i, (res) ->
    res.reply """
              わかりました。戻すのですか。仕方ありません。Wordpressに戻してください。
              100万PVなら今の構成で大丈夫だと思いますが、
              念のため容量が足りるかやチューニングの必要があるか確認しておいてください。
              終わったら、「Wordpressに戻してきました。{どのような点が苦労したか}」と
              報告してください。
              """

  robot.respond /Wordpressに戻してきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。8日目はこれでおしまいです。"

  robot.respond /9日目は何をしましょうか。/i, (res) ->
    res.reply """
              まずは昨日お客様に「Wordpressに戻したことを報告しに来ました。」と
              報告してきてもらえますか。
              """

  robot.respond /お客様からバックアップを取るように頼まれました。/i, (res) ->
    res.reply """
              当然の事でしょうね。DBのデータだけでなく全部取れるようにしてください。
              それと、定期的にバックアップが実施されるようにもしてください。
              終わったら、「バックアップを取れるようにしてきました。{どのように設定したのか}」と
              報告してください。
              """

  robot.respond /バックアップを取れるようにしてきました。.*/i, (res) ->
    res.reply "お疲れ様です。手順は残しておいてください。9日目はこれでおしまいです。"

  robot.respond /10日目は何をしましょうか。/i, (res) ->
    res.reply """
              何をしましょうも何も朝一でお客様からブログが書けないと連絡がありましたよ。
              すぐに障害内容とその原因を調べてください。
              調べたら、お客様に「障害内容とその原因について報告しに来ました。{障害内容と原因}」と
              報告してください。
              """

  robot.respond /お客様から壊れたことを気づく仕組みを作ってほしいと頼まれました。/i, (res) ->
    res.reply """
              つまりは監視ですね。監視用にサーバを新たに構築してください。
              少なくともマシンとプロセスが動いていることは監視できるようにしてください。
              できれば、CPUとメモリ、ディスクも監視できるといいと思います。
              終わったら、「監視を設定してきました。{どのような監視を設定したのか}」と
              報告してください。
              """

  robot.respond /監視を設定してきました。.*/i, (res) ->
    res.reply """
              お疲れ様です。手順は残しておいてください。10日目はこれでおしまいです。
              それと、もういろいろとやって慣れてきたころだと思いますので、
              もう少し早く終わらせてもらわないと困ります。
              あなたの勤務状況の管理責任は、私にありますので。
              何か方法を考えておいてください。
              """
