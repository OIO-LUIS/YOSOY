json.extract! meeting_location, :id, :name, :lat, :lng, :locationRadius, :address, :city, :province, :created_at, :updated_at
json.url meeting_location_url(meeting_location, format: :json)
