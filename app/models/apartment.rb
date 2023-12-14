class Apartment < ApplicationRecord
    belongs_to :user
<<<<<<< HEAD
    has_many :orderables
    has_many :carts, through: :orderables
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: {greater_then: 0 }
    validates :location, presence: true
=======
    
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true
    validates :location, presence: true, numericality: {greater_then: 0 }
>>>>>>> 12323b7acd82f05a5c5836bdeef32b2cffd406c8
end
