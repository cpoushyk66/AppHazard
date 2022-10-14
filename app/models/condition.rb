class Condition < ApplicationRecord

    validates :name, presence: true
    validates :limitations, presence: true
    validates :duration, presence: true
    validates :treatable, presence: true
    validates :curable, presence: true

    has_many :diagnoses, dependent: :destroy
    has_many :medical_profiles, through: :diagnoses
end
