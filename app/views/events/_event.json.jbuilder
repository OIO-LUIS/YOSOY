json.extract! event, :id, :name, :category, :description, :type, :ticket_cost, :total_cost, :ticket_quantity, :location_city, :location_address, :location_lat, :location_lng, :community_benefit, :community_serviceScore, :target_group, :age_group, :is_artist, :non_profit, :tags, :social_contribution, :overall_score, :comments, :created_at, :updated_at
json.url event_url(event, format: :json)
