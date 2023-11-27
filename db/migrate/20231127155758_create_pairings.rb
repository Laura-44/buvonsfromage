class CreatePairings < ActiveRecord::Migration[7.1]
  def change
    create_table :pairings do |t|
      t.references :food, null: false, foreign_key: true
      t.references :drink, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
