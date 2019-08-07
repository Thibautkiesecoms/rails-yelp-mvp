# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese',
    phone_number:  '067342595'
  },
 {
    name:         'Les 7 fontaines',
    address:      '7 Boundary St, London E2 7JE',
    category:     'italian',
    phone_number:  '024215639'
  },{
    name:         'Dishoom 2',
    address:      '7 Boundary St, London E2 7JE',
    category:     'japanese',
    phone_number:  '067342595'
  },{
    name:         'Boom boom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'french',
    phone_number:  '067342595'
  },{
    name:         'A la bonne franquette',
    address:      '7 Boundary St, London E2 7JE',
    category:     'belgian',
    phone_number:  '067342595'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
