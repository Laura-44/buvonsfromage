class AddFamilyToFoods < ActiveRecord::Migration[7.1]
  def change
    add_column :foods, :family, :string
  end
end
