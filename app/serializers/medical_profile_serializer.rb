class MedicalProfileSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :weight, :height, :hair_color, :eye_color, :sex, :gender, :blood_type, :birth_date
end
