class MedicineSerializer < ActiveModel::Serializer
  attributes :id, :name, :most_common_usage, :drug_class
end
