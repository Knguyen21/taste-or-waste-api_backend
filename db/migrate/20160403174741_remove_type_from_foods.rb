class RemoveTypeFromFoods < ActiveRecord::Migration
  def change
    remove_column :foods, :type, :string
  end
end
