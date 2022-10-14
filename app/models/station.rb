class Station < ApplicationRecord

    #Validations
    validates :name, presence: true
    validates :city, presence: true
    validates :state, presence: true
    validates :street_address, presence: true
    validates :station_phone_number, presence: true
    validates :station_phone_number, length: {is: 14}

    #Associations
    has_many :services, dependent: :destroy

    #Methods
end
