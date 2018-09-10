class Car < ApplicationRecord
  belongs_to :driver
  validates :marque, presence: true
  validates :modele, presence: true
end
