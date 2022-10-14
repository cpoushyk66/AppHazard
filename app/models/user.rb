class User < ApplicationRecord

    #Needed for BCrypt
    has_secure_password

    #Validations
    validates :username, uniqueness: true
    validates :username, presence: true
    validates :password_digest, presence: true
    
    #Associations
    has_one :profile, dependent: :destroy
    has_one :medical_profile, dependent: :destroy
    has_many :service_links
    has_many :services, through: :service_links


    #Methods
    def sign_up(service)
        if (service.open?)
            self.service_links.create!(service_id: service.id)
        elsif (!service.accepting_links)
            puts "Not accepting new users at this time."
        else
            puts "Not currently active."
        end
    end

end
