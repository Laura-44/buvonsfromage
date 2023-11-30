class ChangeStrengthToDrinks < ActiveRecord::Migration[7.1]
  def change
    change_column :drinks, :strength, :string
  end
end
