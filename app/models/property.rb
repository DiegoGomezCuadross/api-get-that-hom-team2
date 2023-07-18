class Property < ApplicationRecord
  has_one_attached :photo
  belongs_to :user

  validates :operation_type, :address, :property_type, :bedrooms, :bathrooms, :area, :about, presence: true, on: :update
end
