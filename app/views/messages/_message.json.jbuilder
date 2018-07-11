json.extract! message, :id, :author, :content, :show, :created_at, :updated_at
json.url message_url(message, format: :json)
