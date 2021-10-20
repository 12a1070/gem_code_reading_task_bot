require "slack-notify"
require 'clockwork'
require 'active_support/time'

module Clockwork
client = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')
# client.notify("8番ラーメン")

#   # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
#   client.notify("Hello There!")
#  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
every(5.seconds, '8番ラーメン') do
  client.notify("8番ラーメン")
end
# 5分ごとbot

end
