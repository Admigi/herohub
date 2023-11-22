class AddUserIdToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :user_id, :integer
    add_column :bookings, :hero_id, :integer
  end
end
