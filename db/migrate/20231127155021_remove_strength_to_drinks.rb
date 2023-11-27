class RemoveStrengthToDrinks < ActiveRecord::Migration[7.1]
  def change
    remove_column :drinks, :strength
  end
end
