json.extract! event, :id, :name, :description, :venue, :city, :date, :time, :created_at, :updated_at
json.url event_url(event, format: :json)
