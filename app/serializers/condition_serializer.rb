class ConditionSerializer < ActiveModel::Serializer
  attributes :id, :name, :limitations, :duration, :treatable, :curable
end
