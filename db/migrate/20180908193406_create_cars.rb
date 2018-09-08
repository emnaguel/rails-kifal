class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :marque
      t.string :modele
      t.integer :année
      t.string :km
      t.integer :prix
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
