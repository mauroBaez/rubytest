class MailgunController < ApplicationController
  skip_before_action :verify_authenticity_token

  before_action :verify_mailgun_signature

  def delivered
    Email.mark_undeliverable(params[:recipient])
  end

  private

  def verify_mailgun_signature
    api_key = ENV["MAILGUN_API_KEY"]
    token = params[:token]
    timestamp = params[:timestamp]
    signature = params[:signature]

    digest = OpenSSL::Digest::SHA256.new
    data = [timestamp, token].join

    valid_signature = signature == OpenSSL::HMAC.hexdigest(digest, api_key, data)

    unless valid_signature
      render nothing: true, status: :unauthorized
    end
  end
end