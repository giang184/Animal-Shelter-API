class Animal < ApplicationRecord
  validates :name, presence: true
  validates :animal_type, presence: true
  validates :gender, presence: true
  validates :age, presence: true
  validates :weight, presence: true
  validates :color, presence: true
  validates :breed, presence: true

  scope :search_by_breed, -> (parameter) { where('LOWER(breed) like ?', "%#{parameter.downcase}%").limit(25)}
  scope :search_by_max_age, -> (parameter) { where('age <=?', "#{parameter.to_i}").limit(25)}
  scope :search_by_max_weight, -> (parameter) { where('weight <=?', "#{parameter.to_i}").limit(25)}

  def self.search_by_multiple_params(breed, age, weight)
    animals = Animal.all
    array = []
    animals.each { |element|
      if(element.age.to_i <= age.to_i && element.weight.to_i <= weight.to_i && (element.breed.downcase.include? breed.downcase))
        array.push(element)
      end
    }
    array
  end

end