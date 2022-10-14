class MedicalProfile < ApplicationRecord

    validates :user_id, presence: true
    validates :weight, presence: true
    validates :weight, numericality: { greater_than_or_equal_to: 0 }
    validates :height, presence: true
    validates :height, numericality: { greater_than_or_equal_to: 0 }
    validates :hair_color, presence: true
    validates :eye_color, presence: true
    validates :race, presence: true
    validates :sex, presence: true
    validates :sex, inclusion: { in: ["Male", "Female", "Intersex"], message: "%{value} is not a valid sex" }
    validates :gender, presence: true
    validates :blood_type, presence: true
    validates :blood_type, inclusion: { in: %w(A- A+ B- B+ AB- AB+ O- O+), message: "%{value} is not a valid blood type" }
    validates :birth_date, presence: true
    validate :cannot_be_born_in_future



    def cannot_be_born_in_future 
        if birth_date.present? && birth_date > Date.today
            errors.add(:birth_date, "can't be in the future")
        end
    end

    belongs_to :user
    has_many :prescriptions, dependent: :destroy
    has_many :medicines, through: :prescriptions    
    has_many :diagnoses, dependent: :destroy
    has_many :conditions, through: :diagnoses

end
