class RemoveUserIdColumn < ActiveRecord::Migration[7.1]
  def change
    remove_column :bookings, :user_id
    remove_column :bookings, :hero_id
  end
end
