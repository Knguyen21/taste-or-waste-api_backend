class Storage < ActiveRecord::Base
  belongs_to :user, inverse_of: :storages
  has_many :foods, foreign_key: 'storage_id'
end
