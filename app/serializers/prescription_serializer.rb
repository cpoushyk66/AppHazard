class PrescriptionSerializer < ActiveModel::Serializer
  attributes :id, :medical_profile_id, :medicine_id, :prescriber_id, :prescribed_for, :dosage
end
