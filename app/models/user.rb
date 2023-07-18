class User < ApplicationRecord
    has_many :propertys, dependent: :destroy

    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
    validates :phone, presence: true
    validates :password, presence: true
end
