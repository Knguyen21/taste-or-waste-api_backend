class FoodSerializer < ActiveModel::Serializer
  attributes :id, :category, :storage, :disposal, :name, :description, :purchased_date, :expiration_date, :remind_date, :user
end
