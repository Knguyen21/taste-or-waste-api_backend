class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :type
      t.string :storage
      t.string :disposal
      t.string :name
      t.text :description
      t.date :purchased_date
      t.date :expiration_date
      t.date :remind_date


      t.timestamps null: false
    end
  end
end
