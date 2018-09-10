class RemoveUserToCars < ActiveRecord::Migration[5.2]
  def change
    remove_reference :cars, :user, foreign_key: true
  end
end
