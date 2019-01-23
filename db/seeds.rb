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
    name:         'Vapiano',
    address:      'Ingolstadt',
    phone_number: '+49 87493743',
    category:     'italian'

  },
  {
    name:         'Asia Palast',
    address:      'München',
    phone_number: '+49 112345',
    category:     'chinese'
  },
   {
    name:         'Cafe de Paris',
    address:      'Berlin',
    phone_number: '0873947 7434324',
    category:     'french'
  },
   {
    name:         'Whok Whok',
    address:      'München',
    phone_number: '0596-785775',
    category:     'japanese'
  },
   {
    name:         'Test Test',
    address:      'Köln',
    phone_number: '452345345',
    category:     'belgian'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
