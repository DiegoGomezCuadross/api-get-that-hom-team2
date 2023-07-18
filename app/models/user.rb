class User < ApplicationRecord
    has_secure_password
    
    has_many :properties, dependent: :destroy

     validates :email, uniqueness: true,
                    presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "is invalid" }

  validates :name, :phone, :role, presence: true, on: :update
end
