class Profile < ApplicationRecord

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: { case_sensitive: false }
    validates :phone_number, length: {is: 14}
    validates :image, presence: true
    validates :user_id, presence: true

    belongs_to :user


end
