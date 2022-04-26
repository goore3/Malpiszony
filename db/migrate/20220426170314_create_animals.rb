class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.text :description
      t.references :enclosure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
