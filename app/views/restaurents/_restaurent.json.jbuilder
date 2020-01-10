json.extract! restaurent, :id, :name, :details, :location, :created_at, :updated_at
json.url restaurent_url(restaurent, format: :json)
