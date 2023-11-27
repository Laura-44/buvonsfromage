class CreateDrinks < ActiveRecord::Migration[7.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.string :flavor
      t.string :aroma
      t.string :description
      t.string :productor
      t.string :strength

      t.timestamps
    end
  end
end
