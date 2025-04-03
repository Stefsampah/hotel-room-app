# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


Hotel.create(name: "Hôtel de Paris", address: "Paris")
Room.create(name: "Chambre Luxe", image_url:"https://www.turenne.com/media/cache/jadro_resize/rc/p35z1T8e1709124243/jadroRoot/medias/5cc700adbfa0b/5cc7027f17b8d/chambre-triple-pre-mium.jpg
", description: "Spacious and luxurious room with a view of the Eiffel Tower.", price: 200, hotel_id: 1)
Room.create(name: "Chambre Luxe", image_url:"https://www.turenne.com/media/cache/jadro_resize/rc/p35z1T8e1709124243/jadroRoot/medias/5cc700adbfa0b/5cc7027f17b8d/chambre-triple-pre-mium.jpg
", description: "Spacious and luxurious room with a view of the Eiffel Tower.", price: 100, hotel_id: 1)
Room.create(name: "Chambre Luxe", image_url:"https://www.turenne.com/media/cache/jadro_resize/rc/p35z1T8e1709124243/jadroRoot/medias/5cc700adbfa0b/5cc7027f17b8d/chambre-triple-pre-mium.jpg
", description: "Spacious and luxurious room with a view of the Eiffel Tower.",price: 300, hotel_id: 1)


