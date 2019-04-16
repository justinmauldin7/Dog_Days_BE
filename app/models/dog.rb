class Dog < ApplicationRecord
  validates_presence_of :breed, :image
end
