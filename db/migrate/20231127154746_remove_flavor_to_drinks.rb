class RemoveFlavorToDrinks < ActiveRecord::Migration[7.1]
  def change
    remove_column :drinks, :flavor
  end
end
