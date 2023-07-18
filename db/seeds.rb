require "faker"

puts "Reset data"

Favorite.destroy_all
Property.destroy_all
User.destroy_all


ActiveRecord::Base.connection.reset_pk_sequence!('fovorites')
ActiveRecord::Base.connection.reset_pk_sequence!('properties')
ActiveRecord::Base.connection.reset_pk_sequence!('users')

puts "Seeding User Home seeker"

user1 = User.create!{(email: "home@mail.com", 
            name: "Home Seeker", 
            password: "123456",
            password_confirmation: "123456"
            role: 1
            )}

properties1= Property.create!{(
    address: "Miraflores, Lima",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/top-view-green-cream-soups_23-2148519096.jpg"
)}

properties2= Property.create!{(name: "Barranco, Lima",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/organic-pumpkin-puree-white-bowl_193819-1820.jpg"
  )}

properties3= Property.create!{(name: "Surquillo, lima",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/flat-lay-homemade-soup-broccoli-spinach_23-2148452773.jpg"
  )}

properties4= Property.create!{(name: "Ate, Lima",
    category: "Alquiler",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/zucchini-cream-soup-with-garlic-chilli_2829-19613.jpg"
  )}
  properties5= Property.create!{(name: "asian ramen",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/traditional-asian-ramen-soup-with-onion-egg-pork-corn-parsley-hot-pepper-black-bowl-black-surface-with-reflection_207126-3157.jpg"
  )}
  properties6= Property.create!{(name: "tortilla mix",
    category: "Alquiler",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/tortilla-with-mix-ingredients_62847-293.jpg"
  )}
  properties7= Property.create!{(name: "spicy nachos",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-spicy-food-nachos-top-view_23-2148224125.jpg"
  )}
  properties8= Property.create!{(name: "barquita taco",
    category: "Alquiler",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-barquita-taco-with-beef-chilli-tomato-onion-spices-wooden-table_123827-15005.jpg"
  )}
  properties9= Property.create!{(name: "quesadillas wrap",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-quesadilla-wrap-with-chicken-corn-sweet-pepper-salsa_2829-19734.jpg"
  )}
  properties10= Property.create!{(name: "nachos chips",
    category: "Alquiler",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/plate-nacho-chips-with-homemade-salsa_23-2148181587.jpg"
  )}
  properties11= Property.create!{(name: "veggie tacos",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-appetizer-tacos-with-vegetables_127425-270.jpg"
  )}
  properties12= Property.create!{(name: "shrimp tempura",
    category: "Alquiler",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://image.freepik.com/free-photo/side-view-shrimp-tempura-roll-sushi_141793-3273.jpg"
  )}
  properties13= Property.create!{(name: "mix rolls",
    category: "Alquiler",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://image.freepik.com/free-photo/traditional-japanese-sushi-rolls-cutting-boards_220768-8.jpg"
  )}
  properties14= Property.create!{(name: "combo makis",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://image.freepik.com/free-photo/top-view-sushi-set-with-soy-sauce-chopsticks-wooden-serving-board_176474-3466.jpg"
  )}
  properties15= Property.create!{(name: "rissoto",
    category: "Alquiler",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/italian-risotto-with-shrimps_1339-82453.jpg"
  )}
  properties16= Property.create!{(name: "chicken spagetti",
    category: "Venta",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/chicken-spaghetti-pasta-white-wooden-background-with-italian-food_1205-3969.jpg"
  )}
  properties17= Property.create!{(name: "penne carbonara",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/penne-carbonara-pasta-with-salmon_74190-2784.jpg"
  )}
  properties18= Property.create!{(name: "stir fried spaghetti",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/stir-fried-spaghetti-with-chicken-basil_1339-106679.jpg"
  )}
  properties19= Property.create!{(name: "spaghetti with tomato",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/pasta-spaghetti-with-tomato-sauce-black-bowl-top-view_170884-14.jpg"
  )}
  properties20= Property.create!{(name: "popcorn",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/top-view-bucket-popcorns_114309-228.jpg"
  )}
  properties21= Property.create!{(name: "cookies mix",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/assortment-salt-crackers-shot-from-top-colorful-with-copy-salty-party-snacks-mix_114579-3815.jpg"
  )}
  properties22= Property.create!{( name: "potato chips",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/close-up-potato-chips-wood-top-view-background_120872-5307.jpg"
  )}
  properties23= Property.create!{(name: "pretzels",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/top-view-pretzels-arrangement_23-2148582666.jpg"
  )}
  properties24= Property.create!{(name: "nuts",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mixture-roasted-nuts-with-salt-pepper-masala-pulses-channa-masala-dal-green-peas-blue-bowl_136354-6214.jpg"
  )}

products.each { |product| Product.create(product) }
p "Seeding finished"


favorite_user1= Favorite.create{(
  user1.id,
  properties1.id,
)}