json.extract! flat, :id, :name, :description, :address, :photo, :lat, :long, :photo, :host_id, :created_at, :updated_at
json.url flat_url(flat, format: :json)
