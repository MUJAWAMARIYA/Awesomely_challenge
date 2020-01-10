class CreateRestaurents < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurents do |t|
      t.string :name
      t.text :details
      t.string :location

      t.timestamps
    end
  end
end
