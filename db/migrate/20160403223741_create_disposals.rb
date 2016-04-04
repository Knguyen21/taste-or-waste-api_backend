class CreateDisposals < ActiveRecord::Migration
  def change
    create_table :disposals do |t|
      t.string :method_by

      t.timestamps null: false
    end
  end
end
