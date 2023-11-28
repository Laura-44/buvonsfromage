class AddStyleToDrinks < ActiveRecord::Migration[7.1]
  def change
    add_column :drinks, :style, :string
  end
end
