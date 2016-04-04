class AddUserRefToDisposal < ActiveRecord::Migration
  def change
    add_reference :disposals, :user, index: true, foreign_key: true
  end
end
