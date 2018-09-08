class Car < ApplicationRecord
  belongs_to :user
  validates :marque, presence: true
  validates :modele, presence: true
  validates :prix, presence: true
  validates :année, presence: true
  validates :km, presence: true
end
