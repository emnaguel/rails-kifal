class Car < ApplicationRecord
  has_many_attached :pictures
  has_one_attached :cover_picture
  belongs_to :driver
  validates :marque, presence: true
  validates :modele, presence: true
end
