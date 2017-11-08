class Customer < ApplicationRecord
  validates :full_name, :phone_number, :image, presence:true
end
