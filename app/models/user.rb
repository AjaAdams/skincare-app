class User < ApplicationRecord
  has_secure_password
  
  has_many :routines
  has_many :products
  
  validates :email, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password, presence: true, length: {in: 5..20}, confirmation: true
  
end
