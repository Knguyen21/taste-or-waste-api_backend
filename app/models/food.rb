class Food < ActiveRecord::Base
    belongs_to :user, inverse_of: :foods
end
