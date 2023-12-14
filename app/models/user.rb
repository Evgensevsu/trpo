class User < ApplicationRecord
<<<<<<< HEAD
<<<<<<< HEAD
  rolify
=======
>>>>>>> b57ee9a6c8b194fc038e02c3385308826f7330fd
=======
  rolify
>>>>>>> 12323b7acd82f05a5c5836bdeef32b2cffd406c8
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
<<<<<<< HEAD
<<<<<<< HEAD

    has_many :apartments
           
    validates :first_name, presence: true, length: { maximum: 100 }
    validates :last_name, presence: true, length: { maximum: 100 }
    validates :email, presence: true, length: { maximum: 150 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
=======
  
    validates :first_name, presence: true, length: { maximum: 100 }
    validates :last_name, presence: true, length: { maximum: 100 }
    validates :email, presence: true, length: { maximum: 150 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
  
>>>>>>> b57ee9a6c8b194fc038e02c3385308826f7330fd
=======

    has_many :apartments
           
    validates :first_name, presence: true, length: { maximum: 100 }
    validates :last_name, presence: true, length: { maximum: 100 }
    validates :email, presence: true, length: { maximum: 150 }, format: { with: URI::MailTo::EMAIL_REGEXP }
  end
>>>>>>> 12323b7acd82f05a5c5836bdeef32b2cffd406c8
