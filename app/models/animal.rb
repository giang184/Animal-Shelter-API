class Animal < ApplicationRecord
  validates :name, presence: true
  validates :animal_type, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :color, presence: true
  validates :breed, presence: true
end