class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column :name, :string
      t.column :animal_type, :string
      t.column :gender, :string
      t.column :age, :integer
      t.column :weight, :integer
      t.column :color, :string
      t.column :breed, :string
    end
  end
end
