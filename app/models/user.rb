class User < ApplicationRecord

    #Needed for BCrypt
    has_secure_password

    #Validations
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password_digest, presence: true
    
    #Associations
    has_one :profile
    has_one :medical_profile



end
