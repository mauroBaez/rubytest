Mailgun.configure do |config|
  config.api_key = ENV['MAILGUN_API_KEY']
end
config.action_mailer.delivery_method = :mailgun
  config.action_mailer.mailgun_settings = {
    api_key: 'api-myapikey',
    domain: 'mydomain.com',
  }