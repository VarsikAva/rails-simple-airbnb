# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Flat.destroy_all

flats = [
  {
    name: 'Light & Spacious Garden Flat London',
    address: '10 Clifton Gardens London W9 1DT',
    description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen',
    price_per_night: 75,
    number_of_guests: 3,
    picture_url: 'https://images.unsplash.com/photo-1434082033009-b81d41d32e1c?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Cozy Studio in Paris',
    address: '22 Rue de la Paix, Paris',
    description: 'A cozy studio in the heart of Paris with a beautiful view of the Eiffel Tower',
    price_per_night: 100,
    number_of_guests: 2,
    picture_url: 'https://images.unsplash.com/photo-1504615755583-2916b52192a3?q=80&w=1074&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Modern Apartment in New York',
    address: '123 Broadway, New York',
    description: 'https://images.unsplash.com/photo-1494526585095-c41746248156?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
    price_per_night: 150,
    number_of_guests: 4,
    picture_url: 'https://images.unsplash.com/photo-1494526585095-c41746248156?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  },
  {
    name: 'Beachfront Villa in Malibu',
    address: '456 Ocean Drive, Malibu',
    description: 'A luxurious beachfront villa with a private pool and stunning ocean views',
    price_per_night: 300,
    number_of_guests: 6,
    picture_url: 'https://images.unsplash.com/photo-1572120360610-d971b9d7767c?q=80&w=1170&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'
  }
]

flats.each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
