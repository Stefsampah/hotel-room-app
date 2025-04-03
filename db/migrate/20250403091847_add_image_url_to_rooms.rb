class AddImageUrlToRooms < ActiveRecord::Migration[7.1]
  def change
    add_column :rooms, :image_url, :string
  end
end
