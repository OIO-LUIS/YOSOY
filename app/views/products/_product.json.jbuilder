json.extract! product, :id, :name, :category, :description, :type, :tax, :price, :stock, :tags, :image, :dimensions, :weight, :reviews, :score, :comments, :created_at, :updated_at
json.url product_url(product, format: :json)
