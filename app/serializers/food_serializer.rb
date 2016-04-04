class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :purchased_date, :expiration_date, :remind_date, :storage, :disposal
end
