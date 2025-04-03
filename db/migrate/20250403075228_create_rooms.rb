class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.integer :hotel_id
      t.string :room_type
      t.integer :price

      t.timestamps
    end
  end
end
