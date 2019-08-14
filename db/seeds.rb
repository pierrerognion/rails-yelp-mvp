# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating 5 restaurants...'
restaurants_attributes = [
  {
    name:         'PNY',
    address:      '7 Boundary St, London E2 7JE',
    category:  'italian',
  },
  {
    name:         'Mamma Roma',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'italian',
  },
  {
    name:         'Esprit Chai',
    address:      '7 Boundary St, London E2 7JE',
    category:  'french',
  },
  {
    name:         'La Brigade',
    address:      '56A2 Shoreditch High St, London E1 6PQ',
    category:  'french',
  },
  {
    name:         'Bocamexa',
    address:      '56A6 Shoreditch High St, London E1 6PQ',
    category:  'french',
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'