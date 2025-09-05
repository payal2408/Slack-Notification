# app/services/slack_notifier.rb
class SlackNotifier
  def self.notify(message, channel: "@CI-CD Notifier")
    notifier = Slack::Notifier.new("https://hooks.slack.com/services/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")
    notifier.post(text: message, channel: channel)
  end
end