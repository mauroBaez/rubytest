Mailgun.configure do |config|
  config.api_key = ENV['MAILGUN_API_KEY']
end
MAILGUN_CONFIG[:api_key] = ENV['MAILGUN_API_KEY']
