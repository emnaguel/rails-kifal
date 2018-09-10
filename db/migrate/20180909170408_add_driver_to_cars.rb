class AddDriverToCars < ActiveRecord::Migration[5.2]
  def change
    add_reference :cars, :driver, foreign_key: true
  end
end
