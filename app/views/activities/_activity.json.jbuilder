json.extract! activity, :id, :title, :date, :location, :event_type, :created_at, :updated_at
json.url activity_url(activity, format: :json)
