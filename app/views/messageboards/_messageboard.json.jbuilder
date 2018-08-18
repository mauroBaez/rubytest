json.extract! messageboard, :id, :name, :created_at, :updated_at
json.url messageboard_url(messageboard, format: :json)
