class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
