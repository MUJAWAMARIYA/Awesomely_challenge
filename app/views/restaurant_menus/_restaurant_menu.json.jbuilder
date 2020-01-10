json.extract! restaurant_menu, :id, :image, :type_of_food, :amount, :created_at, :updated_at
json.url restaurant_menu_url(restaurant_menu, format: :json)
