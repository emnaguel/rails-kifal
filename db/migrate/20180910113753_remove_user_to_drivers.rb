class RemoveUserToDrivers < ActiveRecord::Migration[5.2]
  def change
    remove_reference :drivers, :user, foreign_key: true
  end
end
