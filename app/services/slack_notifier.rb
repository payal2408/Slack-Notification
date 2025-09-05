# app/services/slack_notifier.rb
class SlackNotifier
  def self.notify(message, channel: "#ci-cd")
    notifier = Slack::Notifier.new("https://hooks.slack.com/services/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")
    notifier.post(text: message, channel: channel)
  end
end
