require "faker"

puts "Reset data"

Favorite.destroy_all
Property.destroy_all
User.destroy_all


ActiveRecord::Base.connection.reset_pk_sequence!('fovorites')
ActiveRecord::Base.connection.reset_pk_sequence!('properties')
ActiveRecord::Base.connection.reset_pk_sequence!('users')

puts "Seeding User Home seeker"

User.create(email: "home@mail.com", 
            name: "Home Seeker", 
            password: "123456",
            password_confirmation: "123456"
            role: 1
            )

properties = [
  { operation_type: "sale",
    address: "Miraflores, Lima",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/top-view-green-cream-soups_23-2148519096.jpg"
  },
  { name: "organic pumpkin",
    category: "soups",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/organic-pumpkin-puree-white-bowl_193819-1820.jpg"
  },
  { name: "broccoli soup",
    category: "soups",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/flat-lay-homemade-soup-broccoli-spinach_23-2148452773.jpg"
  },
  { name: "zucchini cream",
    category: "soups",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/zucchini-cream-soup-with-garlic-chilli_2829-19613.jpg"
  },
  { name: "asian ramen",
    category: "soups",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/traditional-asian-ramen-soup-with-onion-egg-pork-corn-parsley-hot-pepper-black-bowl-black-surface-with-reflection_207126-3157.jpg"
  },
  { name: "tortilla mix",
    category: "mexican",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/tortilla-with-mix-ingredients_62847-293.jpg"
  },
  { name: "spicy nachos",
    category: "mexican",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-spicy-food-nachos-top-view_23-2148224125.jpg"
  },
  { name: "barquita taco",
    category: "mexican",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-barquita-taco-with-beef-chilli-tomato-onion-spices-wooden-table_123827-15005.jpg"
  },
  { name: "quesadillas wrap",
    category: "mexican",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-quesadilla-wrap-with-chicken-corn-sweet-pepper-salsa_2829-19734.jpg"
  },
  { name: "nachos chips",
    category: "mexican",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/plate-nacho-chips-with-homemade-salsa_23-2148181587.jpg"
  },
  { name: "veggie tacos",
    category: "mexican",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mexican-appetizer-tacos-with-vegetables_127425-270.jpg"
  },
  { name: "shrimp tempura",
    category: "sushi",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://image.freepik.com/free-photo/side-view-shrimp-tempura-roll-sushi_141793-3273.jpg"
  },
  { name: "mix rolls",
    category: "sushi",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://image.freepik.com/free-photo/traditional-japanese-sushi-rolls-cutting-boards_220768-8.jpg"
  },
  { name: "combo makis",
    category: "sushi",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://image.freepik.com/free-photo/top-view-sushi-set-with-soy-sauce-chopsticks-wooden-serving-board_176474-3466.jpg"
  },
  { name: "rissoto",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/italian-risotto-with-shrimps_1339-82453.jpg"
  },
  { name: "chicken spagetti",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/chicken-spaghetti-pasta-white-wooden-background-with-italian-food_1205-3969.jpg"
  },
  { name: "penne carbonara",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/penne-carbonara-pasta-with-salmon_74190-2784.jpg"
  },
  { name: "stir fried spaghetti",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/stir-fried-spaghetti-with-chicken-basil_1339-106679.jpg"
  },
  { name: "spaghetti with tomato",
    category: "italian",
    price: rand(1000..5000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/pasta-spaghetti-with-tomato-sauce-black-bowl-top-view_170884-14.jpg"
  },
  { name: "popcorn",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/top-view-bucket-popcorns_114309-228.jpg"
  },
  { name: "cookies mix",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/assortment-salt-crackers-shot-from-top-colorful-with-copy-salty-party-snacks-mix_114579-3815.jpg"
  },
  { name: "potato chips",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/close-up-potato-chips-wood-top-view-background_120872-5307.jpg"
  },
  { name: "pretzels",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/top-view-pretzels-arrangement_23-2148582666.jpg"
  },
  { name: "nuts",
    category: "snack",
    price: rand(500..2000),
    description: Faker::Lorem.paragraph_by_chars(number: 240),
    picture_url: "https://img.freepik.com/free-photo/mixture-roasted-nuts-with-salt-pepper-masala-pulses-channa-masala-dal-green-peas-blue-bowl_136354-6214.jpg"
  },
]

products.each { |product| Product.create(product) }

p "Seeding finished"