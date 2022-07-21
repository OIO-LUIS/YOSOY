json.extract! booking, :id, :name, :category, :description, :type, :reviews, :score, :image, :comments, :created_at, :updated_at
json.url booking_url(booking, format: :json)
