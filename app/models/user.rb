class User < ApplicationRecord
    has_many :propertys, dependent: :destroy
end
