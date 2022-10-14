class ServiceLink < ApplicationRecord
    validates :service_id, presence: true
    validates :user_id, presence: true
    validates :user_access_level, presence: true
    validates :user, uniqueness: {scope: :id}
    
    belongs_to :service
    belongs_to :user
end
