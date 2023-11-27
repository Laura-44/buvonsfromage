class CreateCategorieDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :categorie_drinks do |t|
      t.references :category, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true

      t.timestamps
    end
  end
end
