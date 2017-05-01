Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../scripts/training3rd.coffee')

describe 'The 3rd week of Training', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  context 'trainee asks hubot for redanduncy and configuration', ->

    it 'should instruct trainee to build replica', ->
      @room.user.say('miura', '@hubot 11日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 11日目は何をしましょうか。']
          ['hubot', '@miura ここからの内容は難易度が高くなるので、気合を入れて臨んでください。\nさて先週、監視をしてバックアップを取って障害があってもすぐ復旧できる状態にはしました。\nしかし、それでもサーバを作り直すのは時間がかかります。\nそこで、あらかじめ予備のサーバを用意して片方に障害があった時に切り替えるようにしておきます。\nまずは、MySQLをもう一台用意して、レプリケーションされるようにしましょう。\n終わったら、「レプリケーションを設定しました。[苦労した点]」と報告してください。']
        ]

    it 'should finish the 11th day of training', ->
      @room.user.say('miura', '@hubot レプリケーションを設定しました。APから受ける部分で悩みました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot レプリケーションを設定しました。APから受ける部分で悩みました。']
          ['hubot', '@miura 実際に片方をダウンさせてももう片方でサイトを見れるのを確認しましたか。\nもししていなかったら、今からしてきてください。\nなお、このままだとMySQLしか冗長化させていないので、\nWeb、AP部分に障害があったらブログは使えなくなります。\nそのことについては、明日続きをやりましょう。11日目はここまでです。']
        ]

    it 'should instruct trainee to depulicate Wordpress by Ansible', ->
      @room.user.say('miura', '@hubot 12日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 12日目は何をしましょうか。']
          ['hubot', '@miura 昨日伝えたように残りの部分の冗長化を行いましょう。\n冗長化と言っても、サーバを複数用意すれば、あとはネットワークにより振り分けるだけです。\nただ、サーバはWeb、AP、DBの3種それぞれで構築するようにしてください。\nすると、追加で4台必要になります。慣れてきたとはいえ、それなりの時間はかかるでしょう。\nそこで、先週伝えたことは覚えていますか。その答えの一つとして、構成管理ツールがあります。\nたとえば、ChefやPuppetなどです。今回はAnsibleを使ってみましょう。\nまずは新しいサーバを用意して、WordpressをAnsibleで作成してください。\n終わったら、「WordpressをAnsibleで作成してきました。[苦労した点]」と報告してください。']
        ]

    it 'should finish the 12th day of training', ->
      @room.user.say('miura', '@hubot WordpressをAnsibleで作成してきました。一度やった手順ですが、自動化となると難しかったです。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot WordpressをAnsibleで作成してきました。一度やった手順ですが、自動化となると難しかったです。']
          ['hubot', '@miura どうでしたでしょうか。時間は早くなりましたでしょうか。\n多分最初はAnsibleのフォーマットを作るので時間がかかったと思います。\nでは、同じものをもう一台作った場合はどうでしょうか。\n実際にこれから作ってみてください。12日目はそれで終わりにします。']
        ]

    it 'should instruct trainee to depulicate Apache by Ansible', ->
      @room.user.say('miura', '@hubot 13日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 13日目は何をしましょうか。']
          ['hubot', '@miura DB、APと来ましたので、次はWebに取り掛かりましょう。\nApacheをAnsibleで作成しましょう。もちろん、2台です。\n作成したら、Web、AP、DBを繋げて、正常に表示されるか確認しましょう。\n片方ずつ停止させてみて、問題ないか確認しましょう。\n終わったら、「ApacheをAnsibleで作成してきました。[苦労した点]」と報告してください。']
        ]

    it 'should finish the 13th day of training', ->
      @room.user.say('miura', '@hubot ApacheをAnsibleで作成してきました。confファイルの修正をどうするかを悩みました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot ApacheをAnsibleで作成してきました。confファイルの修正をどうするかを悩みました。']
          ['hubot', '@miura これで冗長性が担保されました。\nちなみにこれまで作成されてきたものについては、gitで管理されてますでしょうか。\n変更について逐次commitして履歴を残しましょう。\nただ、このままでは、Webに接続する際別々のホスト名に接続する必要があると思います。\nそこで前段にロードバランサー(LB)を設置しましょう。\nこれについては明日実施しましょう。13日目はこれでおしまいです。']
        ]

    it 'should instruct trainee to build LB by Ansible', ->
      @room.user.say('miura', '@hubot 14日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 14日目は何をしましょうか。']
          ['hubot', '@miura さて、LBにはハードウェアのLBもありますが、ソフトウェアのものもあります。\n今回はソフトウェアでのLBにしてください。\n実際にはLB自体の冗長性も考慮する必要がありますが、今回はなくて大丈夫です。\n最近はGoogleがHTTPSでの接続を優遇すると発表したため、\nSSLラッパーとしての機能も追加できるとなおいいです。\nもちろん、これもAnsibleで作成してください。\n終わったら、「LBをAnsibleで作成してきました。[苦労した点]」と報告してください。']
        ]

    it 'should finish the 14th day of training', ->
      @room.user.say('miura', '@hubot LBをAnsibleで作成してきました。証明書を入手するのにお金がかかるのでやめました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot LBをAnsibleで作成してきました。証明書を入手するのにお金がかかるのでやめました。']
          ['hubot', '@miura これでサーバの構成としては冗長性のある堅固な構成となりました。\n実際にはさらに考慮すべきことはありますが、今は十分でしょう。\nまた、構築の手間も省かれたものになっているはずです。\n同じ構成を再び作ることになっても、今ならすぐできるでしょう。\nただ、一つ懸念点があります。これは明日説明します。\n14日目はこれでおしまいです。']
        ]

    it 'should instruct trainee to deploy Wordpress Code by something', ->
      @room.user.say('miura', '@hubot 15日目は何をしましょうか。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 15日目は何をしましょうか。']
          ['hubot', '@miura さて、昨日言った懸念点とはなんでしょうか。\nDB、Webと違って、Wordpressではサーバ部分は更新しなくても、\nアプリのコード部分は頻繁に更新することがあります。\n一緒に更新をかけることもできなくはないですが、\n更新する必要がない部分を更新してしまうのは余計に負荷がかかります。\nそのため、別々の方法で行う必要があります。\nこの方法は考えて、実施してください。\n終わったら、「15日目は[実施したこと]を実施しました。[感想]」と報告してください。']
        ]

    it 'should finish the 15th day of training', ->
      @room.user.say('miura', '@hubot 15日目はWordpressのデプロイを実施しました。アプリ部分なのでまた違ったもので苦労しました。').then =>
        expect(@room.messages).to.eql [
          ['miura', '@hubot 15日目はWordpressのデプロイを実施しました。アプリ部分なのでまた違ったもので苦労しました。']
          ['hubot', '@miura できましたでしょうか。\nアプリの配置については、インフラとは異なる領域で語られてきました。\nしかし、自動化を考えた時には一貫して行った方が効果が高くなります。\nそのため、自動化の考えは、どちらかといえばアプリからインフラへと浸透してきました。\nでは、この環境は十分に自動化されていますでしょうか。\n実は足りない部分があります。それを来週までに考えてください。\n15日目はこれでおしまいです。']
        ]
