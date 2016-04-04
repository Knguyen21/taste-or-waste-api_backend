class StorageSerializer < ActiveModel::Serializer
  attributes :id, :storage_type, :user, :foods
end
