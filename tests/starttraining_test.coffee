Helper = require('hubot-test-helper')
chai = require 'chai'

expect = chai.expect

helper = new Helper('../scripts/hello.coffee')

describe 'Training start', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'start Training', ->
    @room.user.say('miura', '@boss 三浦と申します。監視ソフトウェアの構築をしていました。').then =>
      expect(@room.messages).to.eql [
        ['miura', '@boss 三浦と申します。監視ソフトウェアの構築をしていました。']
        ['hubot', '@miura: はじめまして、三浦さん。これからよろしくお願いします。']
        ['hubot', '@miura: 早速だけど、お客様にあいさつにしにいってもらえますか。']
        ['hubot', '@miura: 「@customer {名前}と申します。{これまでの経歴}」の形式です。']
      ]
