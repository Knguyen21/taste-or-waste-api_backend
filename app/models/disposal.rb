class Disposal < ActiveRecord::Base
  belongs_to :user, inverse_of: :disposals
  has_many :foods, foreign_key: 'disposal_id'
end
