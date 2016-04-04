class AddUserRefToStorage < ActiveRecord::Migration
  def change
    add_reference :storages, :user, index: true, foreign_key: true
  end
end
