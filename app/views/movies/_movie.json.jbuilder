json.extract! movie, :id, :name, :description, :customer_id, :created_at, :updated_at
json.url movie_url(movie, format: :json)