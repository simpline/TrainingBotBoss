Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../scripts/training1st.coffee')

describe 'The 1st week of Training', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  context 'trainee asks hubot for a training', ->

    it 'should instruct trainee to introduce to boss', ->
      @room.user.say('miura', '@hubot 1日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 1日目は何をしましょうか。']
          ['hubot', '@miura まずは、これからの意気込みについて語っていただけますでしょうか。\n私に「本日より配属されました[名前]と申します。[意気込み]」とあいさつしてください。']
        ]

    it 'should instruct a greeting to customer', ->
      @room.user.say('miura', '@hubot 本日より配属されました三浦と申します。監視ソフトウェアの構築をしていました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 本日より配属されました三浦と申します。監視ソフトウェアの構築をしていました。']
          ['hubot', '@miura はじめまして、三浦さん。これからよろしくお願いします。\nここに配属されたということは少なくともITパスポートの資格は取っていると考えます。\nそして、ここでは実際に作業して、経験を積んでいってもらいます。\nまずはお客様に「{名前}と申します。{これまでの経歴}」とあいさつにしにいってください。\n終わったら、「お客様にあいさつしてきました。」と報告してください。']
        ]

    it 'should instruct building a server', ->
      @room.user.say('miura', '@hubot お客様にあいさつしてきました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot お客様にあいさつしてきました。']
          ['hubot', '@miura それでは、ある案件で急にサーバが1台必要になったので、それを用意してください。\nOSはCentOS7で お願いします。次のサイトを参考にして初期設定まで完了させてください。\nhttps://www.server-world.info\nユーザとグループを新たに作成して、sudoで作業するようにしてください。\n終わったら、「サーバを立ててきました。{感想}」と報告してください。']
        ]

    it 'should finish the 1st day of training', ->
      @room.user.say('miura', '@hubot サーバを立ててきました。思ったよりインストールに時間がかかりました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot サーバを立ててきました。思ったよりインストールに時間がかかりました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。1日目はこれでおしまいです。']
        ]

    it 'should instruct building NTP,DNS,DHCP', ->
      @room.user.say('miura', '@hubot 2日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 2日目は何をしましょうか。']
          ['hubot', '@miura 昨日構築したサーバでNTPを導入してください。\n自動起動されるように設定してください。\nランレベルを変えて、起動後の状況がどのように変わるか確認してください。\ninittabに何か登録して、きちんと動作するか確認してください。\n終わったら、「NTPを導入してきました。{苦労した点}」と報告してください。']
        ]

    it 'should finish the 2nd day of training', ->
      @room.user.say('miura', '@hubot NTPを導入してきました。仕組みをきちんと理解できました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot NTPを導入してきました。仕組みをきちんと理解できました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。2日目はこれでおしまいです。']
        ]

    it 'should instruct building mail server', ->
      @room.user.say('miura', '@hubot 3日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 3日目は何をしましょうか。']
          ['hubot', '@miura 急遽メールサーバが必要になったので、新たに構築してください。\n時刻同期は前回構築したサーバを使用して設定されるようにしてください。\n終わったら、「メールサーバを立ててきました。{感想}」と報告してください。']
        ]

    it 'should finish the 3rd day of training', ->
      @room.user.say('miura', '@hubot メールサーバを立ててきました。メールが送信できることも確認してきました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot メールサーバを立ててきました。メールが送信できることも確認してきました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。3日目はこれでおしまいです。']
        ]

    it 'should instruct building file server', ->
      @room.user.say('miura', '@hubot 4日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 4日目は何をしましょうか。']
          ['hubot', '@miura 簡単なスクリプトを作成してください。\nNTPの結果を受け取って、結果を判定するようなので構いません。\nログを出力させるようにしてください。ログはローテーションさせてください。\nスクリプトはcronに登録して、定期的に実行されるようにしてください。\nまた、gitを使ってバージョン管理するようにしてください。\n終わったら、「スクリプトを作成してきました。{感想}」と報告してください。']
        ]

    it 'should finish the 4th day of training', ->
      @room.user.say('miura', '@hubot スクリプトを作成してきました。gitは便利ですが、扱いが難しいです。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot スクリプトを作成してきました。gitは便利ですが、扱いが難しいです。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。4日目はこれでおしまいです。']
        ]

    it 'should instruct checking server movement', ->
      @room.user.say('miura', '@hubot 5日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 5日目は何をしましょうか。']
          ['hubot', '@miura これまで構築してきたサーバの動きがおかしくないか確認してください。\nプロセスが動いているか、ログにエラーが吐かれてないか確認してください。\n他にCPUやメモリ、ディスクなども調べてきてください。\nためしにファイルシステムの容量を増やしてください。\n終わったら、「サーバを調べてきました。{何を調べたか}」と報告してください。']
        ]

    it 'should finish the 1st week of training', ->
      @room.user.say('miura', '@hubot サーバを調べてきました。プロセスは正常に稼働していました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot サーバを調べてきました。プロセスは正常に稼働していました。']
          ['hubot', '@miura お疲れ様です。調べた結果はまとめてアップロードしておいてください。\n5日日はこれでおしまいです。\n今週実施したことについて復習しておいて、来週に臨んでください。']
        ]
