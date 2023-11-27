class RemoveProdcutorToDrinks < ActiveRecord::Migration[7.1]
  def change
    remove_column :drinks, :productor
  end
end
