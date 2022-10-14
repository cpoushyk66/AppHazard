class Service < ApplicationRecord

    #Validations
    validates :station_id, presence: true
    validates :service_type, presence: true
    validates :service_type, inclusion: { in: ["Medical", "Law Enforcement", "Fire Saftey", "Natural Disasters", "Custom"], message: "%{value} is not a valid service" }
    validates :service_phone_number, presence: true
    validates :service_phone_number, length: {is: 14}
    validates :active, presence: true
    validates :accepting_links, presence: true
    
    #Associations
    belongs_to :station
    has_many :service_links, dependent: :destroy
    has_many :users, through: :service_links

    #Methods
    def open?
        active && accepting_links
    end

end
