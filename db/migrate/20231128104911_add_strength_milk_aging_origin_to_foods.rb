class AddStrengthMilkAgingOriginToFoods < ActiveRecord::Migration[7.1]
  def change
    add_column :foods, :strength, :string
    add_column :foods, :milk, :string
    add_column :foods, :aging, :string
    add_column :foods, :origin, :string
  end
end
