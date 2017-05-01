Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../scripts/training2nd.coffee')

describe 'The 2nd week of Training', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  context 'trainee asks hubot for the 2nd week of training', ->
    it 'should instruct trainee to hear for customer', ->
      @room.user.say('miura', '@hubot 6日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 6日目は何をしましょうか。']
          ['hubot', '@miura 今日はお客様が何かしてほしいことがあるようです。\nお客様に「ご用件を伺いに来ました。」 と聞いてきてもらえますか。']
        ]

    it 'should instruct trainee to build wordpress', ->
      @room.user.say('miura', '@hubot お客様からWordpressを立ててほしいと頼まれました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot お客様からWordpressを立ててほしいと頼まれました。']
          ['hubot', '@miura わかりました。それでは、社内の環境に用意してください。\n終わったら、「Wordpressを立ててきました。{どのような点が苦労したか}」と\n報告してください。']
        ]

    it 'should finish the 6th day of training', ->
      @room.user.say('miura', '@hubot Wordpressを立ててきました。Apacheの設定に苦労しました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot Wordpressを立ててきました。Apacheの設定に苦労しました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。6日目はこれでおしまいです。']
        ]

    it 'should instruct trainee to report building', ->
      @room.user.say('miura', '@hubot 7日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 7日目は何をしましょうか。']
          ['hubot', '@miura まずはお客様に「Wordpressを立てたことを報告しに来ました。」と\n報告してきてもらえますか。']
        ]

    it 'should instruct trainee to change blog', ->
      @room.user.say('miura', '@hubot お客様からMovableTypeにしてほしいと頼まれました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot お客様からMovableTypeにしてほしいと頼まれました。']
          ['hubot', '@miura わかりました。しかし、そういうのは最初に決めておいてほしいですね。\nでもしょうがありません、昨日用意した環境を変更してもらえますか。\n終わったら、「MovableTypeを立ててきました。{どのような点が苦労したか}」と\n報告してください。']
        ]

    it 'should finish the 7th day of training', ->
      @room.user.say('miura', '@hubot MovableTypeを立ててきました。Wordpressのファイルを残さず消すのに苦労しました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot MovableTypeを立ててきました。Wordpressのファイルを残さず消すのに苦労しました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。7日目はこれでおしまいです。']
        ]

    it 'should instruct trainee to report changing', ->
      @room.user.say('miura', '@hubot 8日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 8日目は何をしましょうか。']
          ['hubot', '@miura まずはお客様に「MovableTypeに変更したことを報告しに来ました。」と\n報告してきてもらえますか。']
        ]

    it 'should instruct trainee to check machine spec', ->
      @room.user.say('miura', '@hubot お客様からWordpressに戻して100万PVに耐えられるようにしてほしいと頼まれました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot お客様からWordpressに戻して100万PVに耐えられるようにしてほしいと頼まれました。']
          ['hubot', '@miura わかりました。戻すのですか。仕方ありません。Wordpressに戻してください。\n100万PVなら今の構成で大丈夫だと思いますが、\n念のため容量が足りるかやチューニングの必要があるか確認しておいてください。\n終わったら、「Wordpressに戻してきました。{どのような点が苦労したか}」と\n報告してください。']
        ]

    it 'should finish the 8th day of training', ->
      @room.user.say('miura', '@hubot Wordpressに戻してきました。2回目の構築という事で前回より早くできたと思います。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot Wordpressに戻してきました。2回目の構築という事で前回より早くできたと思います。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。8日目はこれでおしまいです。']
        ]

    it 'should instruct instruct trainee to report rebuilding', ->
      @room.user.say('miura', '@hubot 9日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 9日目は何をしましょうか。']
          ['hubot', '@miura まずは昨日お客様に「Wordpressに戻したことを報告しに来ました。」と\n報告してきてもらえますか。']
        ]

    it 'should instruct trainee to schedule backup', ->
      @room.user.say('miura', '@hubot お客様からバックアップを取るように頼まれました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot お客様からバックアップを取るように頼まれました。']
          ['hubot', '@miura 当然の事でしょうね。DBのデータだけでなく全部取れるようにしてください。\nそれと、定期的にバックアップが実施されるようにもしてください。\n終わったら、「バックアップを取れるようにしてきました。{どのように設定したのか}」と\n報告してください。']
        ]

    it 'should finish the 9th day of training', ->
      @room.user.say('miura', '@hubot バックアップを取れるようにしてきました。毎日0時にバックアップされるようにしました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot バックアップを取れるようにしてきました。毎日0時にバックアップされるようにしました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。9日目はこれでおしまいです。']
        ]

    it 'should send customer\'s claim to trainee', ->
      @room.user.say('miura', '@hubot 10日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 10日目は何をしましょうか。']
          ['hubot', '@miura 何をしましょうも何も朝一でお客様からブログが書けないと連絡がありましたよ。\nすぐに障害内容とその原因を調べてください。\n調べたら、お客様に「障害内容とその原因について報告しに来ました。{障害内容と原因}」と\n報告してください。']
        ]

    it 'should instruct trainee to build monitoring', ->
      @room.user.say('miura', '@hubot お客様から壊れたことを気づく仕組みを作ってほしいと頼まれました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot お客様から壊れたことを気づく仕組みを作ってほしいと頼まれました。']
          ['hubot', '@miura つまりは監視ですね。監視用にサーバを新たに構築してください。\n少なくともマシンとプロセスが動いていることは監視できるようにしてください。\nできれば、CPUとメモリ、ディスクも監視できるといいと思います。\n終わったら、「監視を設定してきました。{どのような監視を設定したのか}」と\n報告してください。']
        ]

    it 'should finish the 2nd week of training', ->
      @room.user.say('miura', '@hubot 監視を設定してきました。死活監視、プロセス監視、リソース監視を設定してきました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 監視を設定してきました。死活監視、プロセス監視、リソース監視を設定してきました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。10日目はこれでおしまいです。\nそれと、もういろいろとやって慣れてきたころだと思いますので、\nもう少し早く終わらせてもらわないと困ります。\nあなたの勤務状況の管理責任は、私にありますので。\n何か方法を考えておいてください。']
        ]
