class CreateEmployeeEnclosures < ActiveRecord::Migration[7.0]
  def change
    create_table :employee_enclosures do |t|
      t.references :employee, null: false, foreign_key: true
      t.references :enclosure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
