# app/services/slack_notifier.rb
class SlackNotifier
  def self.notify(message, channel: "@CI-CD Notifier")
    notifier = Slack::Notifier.new("https://hooks.slack.com/services/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")
    notifier.post(text: message, channel: channel)
  end
end