# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animal
  end

  def generate_animal
    50.times do |i| 
      dog = Animal.create!(
        name: Faker::Creature::Dog.name,
        type: "dog"
        breed: Faker::Creature::Dog.breed,
        gender: Faker::Creature::Dog.gender,
        age: Faker::Number.within(range: 1..10),
        weight: Faker::Number.within(range: 5..100)
        color: ["black", "white", "brown", "grey", "golden", "tan"].sample
      )
      puts "Dog #{i}: Breed is #{animal.breed} and quotation is '#{review.content_body}'."
      cat = Animal.create!(
        name: Faker::Creature::Cat.name,
        type: "cat"
        breed: Faker::Creature::Cat.breed,
        gender: Faker::Creature::Dog.gender,
        age: Faker::Number.within(range: 1..10),
        weight: Faker::Number.within(range: 5..100)
        color: ["black", "white", "brown", "grey", "red", "tan"].sample
      )
      puts "Review #{i}: Author is #{review.author} and quotation is '#{review.content_body}'."
    end
  end

end

Seed.begin