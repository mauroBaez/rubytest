json.extract! invitation, :id, :title, :sent, :sent_datetime, :created_at, :updated_at
json.url invitation_url(invitation, format: :json)
