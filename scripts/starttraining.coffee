# Description:
#   Training 1 - 配属初日
#
# Commands:
#   boss {名前}と申します。{意気込み}

module.exports = (robot) ->
  robot.respond /(.*)と申します。.*/i, (res) ->
    namae = res.match[1]
    res.reply "はじめまして、#{namae}さん。これからよろしくお願いします。\
              早速だけど、お客様にあいさつにしにいってもらえますか。\
              「@customer {名前}と申します。{これまでの経歴}」の形式です。"

module.exports = (robot) ->
  robot.respond /まず何からやりましょうか。/i, (res) ->
    res.reply "そうですね。あるサーバの動きがおかしいのでログを取ってきてください。\
              他にCPUやメモリなども調べてきてください。"

