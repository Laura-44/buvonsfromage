class AddNameToUserCategories < ActiveRecord::Migration[7.1]
  def change
    add_column :user_categories, :name, :string
  end
end
