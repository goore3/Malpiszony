class AddNameToEnclosures < ActiveRecord::Migration[7.0]
  def change
    add_column :enclosures, :name, :string
  end
end
