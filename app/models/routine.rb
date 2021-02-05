class Routine < ApplicationRecord
  belongs_to :user
  has_many :product_routines
  has_many :products, through: :product_routines
  
end
