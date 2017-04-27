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
    it 'should instruct a greeting to customer', ->
      @room.user.say('miura', '@hubot 本日より配属されました三浦と申します。監視ソフトウェアの構築をしていました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 本日より配属されました三浦と申します。監視ソフトウェアの構築をしていました。']
          ['hubot', '@miura はじめまして、三浦さん。これからよろしくお願いします。早速だけど、お客様に「{名前}と申します。{これまでの経歴}」とあいさつにしにいってもらえますか。']
        ]

    it 'should instruct building a server', ->
      @room.user.say('miura', '@hubot お客様にあいさつしてきました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot お客様にあいさつしてきました。']
          ['hubot', '@miura ある案件で急にサーバが1台必要になったので、それを用意してもらえますか。OSはCentOS7で お願いします。次のサイトを参考にして初期設定まで完了させてください。https://www.server-world.info']
        ]

    it 'should finish the 1st day of training', ->
      @room.user.say('miura', '@hubot サーバを立ててきました。思ったよりインストールに時間がかかりました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot サーバを立ててきました。思ったよりインストールに時間がかかりました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。']
        ]

    it 'should instruct building NTP,DNS,DHCP', ->
      @room.user.say('miura', '@hubot 2日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 2日目は何をしましょうか。']
          ['hubot', '@miura 昨日構築したサーバでNTP、DNS、DHCPを構築してもらえますか。']
        ]

    it 'should finish the 2nd day of training', ->
      @room.user.say('miura', '@hubot NTP、DNS、DHCPを構築してきました。仕組みをきちんと理解できました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot NTP、DNS、DHCPを構築してきました。仕組みをきちんと理解できました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。']
        ]

    it 'should instruct building mail server', ->
      @room.user.say('miura', '@hubot 3日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 3日目は何をしましょうか。']
          ['hubot', '@miura 急遽メールサーバが必要になったので、構築してもらえますか。時刻同期やホスト名は前回構築したサーバを使用して設定されるようにしてください。']
        ]

    it 'should finish the 3rd day of training', ->
      @room.user.say('miura', '@hubot メールサーバを立ててきました。メールが送信できることも確認してきました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot メールサーバを立ててきました。メールが送信できることも確認してきました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。']
        ]

    it 'should instruct building file server', ->
      @room.user.say('miura', '@hubot 4日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 4日目は何をしましょうか。']
          ['hubot', '@miura ファイルサーバも必要になりましたので、そちらもお願いします。基本的な設定は今までのを踏襲してください。']
        ]

    it 'should finish the 4th day of training', ->
      @room.user.say('miura', '@hubot ファイルサーバを立ててきました。Windowsからも接続できることを確認しました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot ファイルサーバを立ててきました。Windowsからも接続できることを確認しました。']
          ['hubot', '@miura お疲れ様です。手順は残しておいてください。今日はこれでおしまいです。']
        ]

    it 'should instruct checking server movement', ->
      @room.user.say('miura', '@hubot 5日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 5日目は何をしましょうか。']
          ['hubot', '@miura これまで構築してきたサーバの動きがおかしくないか確認してもらえますか。プロセスが動いているか、ログにエラーが吐かれてないか確認してください。他にCPUやメモリなども調べてきてください。']
        ]

    it 'should finish the 1st week of training', ->
      @room.user.say('miura', '@hubot サーバを調べてきました。プロセスは正常に稼働していました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot サーバを調べてきました。プロセスは正常に稼働していました。']
          ['hubot', '@miura お疲れ様です。調べた結果はまとめてアップロードしておいてください。今日はこれでおしまいです。今週実施したことについて復習しておいて、来週に臨んでください。']
        ]
