class AddStrengthFermentationColorIbuFlavorProductorGrapeOriginAgingToDrinks < ActiveRecord::Migration[7.1]
  def change
    add_column :drinks, :strength, :integer
    add_column :drinks, :fermentation, :string
    add_column :drinks, :color, :string
    add_column :drinks, :ibu, :integer
    add_column :drinks, :flavor, :string
    add_column :drinks, :productor, :string
    add_column :drinks, :grape, :string
    add_column :drinks, :origin, :string
    add_column :drinks, :aging, :string
  end
end
