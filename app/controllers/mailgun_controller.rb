class MailgunController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :verify_mailgun_signature

  def create
    process_event!
    json_response(true)
  end

  private

  
  def process_event!
    sent_email = SentEmail.find_or_initialize_by(
      invitation_id: params["invitation-Id"]
    )

    sent_email.guest_id = guest_id
    sent_email.invitation_id = invitation_id
    sent_email.status = event_status

    sent_email.save!
  end

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