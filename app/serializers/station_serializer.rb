class StationSerializer < ActiveModel::Serializer
  attributes :id, :name, :city, :state, :street_address, :station_phone_number
end
