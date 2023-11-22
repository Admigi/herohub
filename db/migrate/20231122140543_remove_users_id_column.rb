class RemoveUsersIdColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :users_id
    remove_column :bookings, :heros_id
  end
end
