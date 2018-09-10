class CreateDrivers < ActiveRecord::Migration[5.2]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :téléphone
      t.string :rdv

      t.timestamps
    end
  end
end
