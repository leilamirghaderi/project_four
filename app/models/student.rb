class Student < ApplicationRecord
  has_many :reflections
  validates :firstname, :lastname, presence: true
end
