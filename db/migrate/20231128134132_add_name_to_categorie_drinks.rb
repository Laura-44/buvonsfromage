class AddNameToCategorieDrinks < ActiveRecord::Migration[7.1]
  def change
    add_column :categorie_drinks, :name, :string
  end
end
