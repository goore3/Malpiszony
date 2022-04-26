class CreateEnclosures < ActiveRecord::Migration[7.0]
  def change
    create_table :enclosures do |t|
      t.text :localization

      t.timestamps
    end
  end
end
