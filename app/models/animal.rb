class Animal < ApplicationRecord
  validates :name, presence: true
  validates :animal_type, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :color, presence: true
  validates :breed, presence: true

  scope :search_by_breed, -> (parameter) { where('LOWER(breed) like ?', "%#{parameter.downcase}%").limit(25)}
  scope :search_by_age, -> (parameter) { where('age <=?', "#{parameter.to_i}").limit(25)}
  scope :search_by_weight, -> (parameter) { where('weight <=?', "#{parameter.to_i}").limit(25)}
end