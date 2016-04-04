#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :foods
end
