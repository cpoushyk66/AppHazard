class ServiceLinkSerializer < ActiveModel::Serializer
  attributes :id, :service_id, :user_id, :accepted, :user_access_level, :service_access_profile, :service_access_medical_profile
end
