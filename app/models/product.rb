class Product < ApplicationRecord
  has_many :product_routines
  has_many :routines, through: :product_routines

end
