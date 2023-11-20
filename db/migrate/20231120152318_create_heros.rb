class CreateHeros < ActiveRecord::Migration[7.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.string :description
      t.string :power
      t.string :city
      t.float :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
