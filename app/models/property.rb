class Property < ApplicationRecord
  belongs_to :user

    validates :operation_type, presence: true
    validates :address, presence: true
    validates :property_type, presence: true
    validates :bathrooms, presence: true
    validates :bedrooms, presence: true
    validates :area, presence: true
    validates :about, presence: true
end
