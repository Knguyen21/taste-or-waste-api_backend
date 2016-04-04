class AddDisposalRefToFood < ActiveRecord::Migration
  def change
    add_reference :foods, :disposal, index: true, foreign_key: true
  end
end
