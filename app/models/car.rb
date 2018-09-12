class Car < ApplicationRecord
  has_many_attached :pictures

  belongs_to :driver
  validates :marque, presence: true
  validates :modele, presence: true
end
