class AddStorageRefToFood < ActiveRecord::Migration
  def change
    add_reference :foods, :storage, index: true, foreign_key: true
  end
end
