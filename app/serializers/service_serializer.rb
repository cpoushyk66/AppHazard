class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :station_id, :service_type, :service_phone_number, :active, :accepting_links
end
