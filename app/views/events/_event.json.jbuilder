json.extract! event, :id, :name, :lng, :lat, :created_at, :updated_at
json.url event_url(event, format: :json)
