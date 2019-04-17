class Dog < ApplicationRecord
  validates_presence_of :breed, :image

  belongs_to :user
end
