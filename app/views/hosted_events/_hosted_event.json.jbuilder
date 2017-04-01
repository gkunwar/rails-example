json.extract! hosted_event, :id, :title, :event_type, :location, :published, :host_name, :date, :description, :created_at, :updated_at
json.url hosted_event_url(hosted_event, format: :json)
