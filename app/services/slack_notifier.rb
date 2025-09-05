# app/services/slack_notifier.rb
class SlackNotifier
  def self.notify(message, channel: "@CI-CD Notifier")
    notifier = Slack::Notifier.new("https://hooks.slack.com/services/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")
    notifier.post(text: message, channel: channel)
  end
end

# curl -X POST -H 'Content-type: application/json' --data '{"text":"Hello, World!"}' https://hooks.slack.com/services/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