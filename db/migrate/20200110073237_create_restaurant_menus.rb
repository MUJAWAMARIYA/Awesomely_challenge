class CreateRestaurantMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurant_menus do |t|
      t.string :image
      t.string :type_of_food
      t.integer :amount

      t.timestamps
    end
  end
end
