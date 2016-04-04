#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :storages, :disposals
end
