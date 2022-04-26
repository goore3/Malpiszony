class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
