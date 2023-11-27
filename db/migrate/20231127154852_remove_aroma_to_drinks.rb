class RemoveAromaToDrinks < ActiveRecord::Migration[7.1]
  def change
    remove_column :drinks, :aroma
  end
end
