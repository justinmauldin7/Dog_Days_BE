class User < ApplicationRecord
  validates :email, uniqueness: true, presence: true
  validates_presence_of :name, :password

  has_many :dogs
  
  has_secure_password
end
