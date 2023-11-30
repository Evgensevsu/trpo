class Apartment < ApplicationRecord
    belongs_to :user
    
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :location, presence: true, numericality: {greater_then: 0 }
end
