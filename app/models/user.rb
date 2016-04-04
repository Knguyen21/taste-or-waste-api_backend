#
class User < ActiveRecord::Base
  include Authentication
  has_many :storages, foreign_key: 'user_id'
  has_many :examples
  has_many :foods, through: :storages
  has_many :disposals, foreign_key: 'user_id'
  has_many :foods, through: :disposals
end
