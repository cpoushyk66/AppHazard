class Diagnosis < ApplicationRecord

    validates :medical_profile_id, presence: true
    validates :condition_id, presence: true
    validates :doctor_id, presence: true
    validates :notes, presence: true

    belongs_to :condition
    belongs_to :medical_profile
end
