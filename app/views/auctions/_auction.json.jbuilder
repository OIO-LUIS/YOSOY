json.extract! auction, :id, :name, :category, :description, :type, :dimensions, :weight, :image, :condition, :quantity, :manufacturer_country, :initial_bid, :current_bid, :sold_bid, :comments, :created_at, :updated_at
json.url auction_url(auction, format: :json)
