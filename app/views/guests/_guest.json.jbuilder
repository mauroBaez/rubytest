json.extract! guest, :id, :name, :email, :phone, :invitation_id, :created_at, :updated_at
json.url guest_url(guest, format: :json)
