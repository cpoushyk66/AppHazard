class Prescription < ApplicationRecord

    validates :medical_profile_id, presence: true
    validates :medicine_id, presence: true
    validates :prescriber_id, presence: true
    validates :prescribed_for, presence: true
    validates :dosage, presence: true

    belongs_to :medical_profile
    belongs_to :medicine
end
