class Medicine < ApplicationRecord

    validates :name, presence: true
    validates :name, uniqueness: true
    validates :most_common_usage, presence: true
    validates :drug_class, presence: true

    has_many :prescriptions, dependent: :destroy
    has_many :medical_profiles, through: :prescriptions
end
