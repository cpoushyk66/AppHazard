class DiagnosisSerializer < ActiveModel::Serializer
  attributes :id, :medical_profile_id, :condition_id, :doctor_id, :notes
end
