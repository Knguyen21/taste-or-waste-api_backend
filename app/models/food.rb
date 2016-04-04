class Food < ActiveRecord::Base
    belongs_to :storage, inverse_of: :foods
    belongs_to :disposal, inverse_of: :foods
    has_many :users, through: :storages
    has_many :users, through: :disposals
end
