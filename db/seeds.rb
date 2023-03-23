# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Starting seed data creation..."

john_doe = User.create(
    username: "john_doe",
    password: "password",
    image_url: "https://example.com/john_doe_profile.jpg",
    bio: "Hi, I'm John! I'm a software developer who loves to cook in my spare time."
  )
  
  mike_chen = User.create(
    username: "mike_chen",
    password: "password",
    image_url: "https://example.com/mike_chen_profile.jpg",
    bio: "Food enthusiast and travel vlogger. Join me on my culinary adventures around the world!"
  )
  
  jane_smith = User.create(
    username: "jane_smith",
    password: "password",
    image_url: "https://example.com/jane_smith_profile.jpg",
    bio: "Hey there! I'm Jane, and I'm a food blogger. Follow me for delicious recipe ideas!"
  )
  
  bob_ross = User.create(
    username: "bob_ross",
    password: "password",
    image_url: "https://example.com/bob_ross_profile.jpg",
    bio: "Happy little chef here! I love creating new dishes and experimenting with flavors."
  )
  
  samantha_lee = User.create(
    username: "samantha_lee",
    password: "password",
    image_url: "https://example.com/samantha_lee_profile.jpg",
    bio: "Food artist and mom of two. Follow me for creative",
  )
  
Recipe.create(
    title: "Beef Stroganoff",
    instructions: "Cook pasta. Brown beef. Add onion and mushrooms. Add flour, beef broth, Worcestershire sauce, Dijon mustard, and salt. Simmer for 5 minutes. Stir in sour cream and beef. Serve over pasta.",
    minutes_to_complete: 50
)

Recipe.create(
    title: "Chicken Alfredo",
    instructions: "Cook pasta. Cook chicken. Add garlic, heavy cream, Parmesan cheese, salt, and pepper. Simmer for 5 minutes. Serve over pasta.",
    minutes_to_complete: 40
)

Recipe.create(
    title: "Tacos",
    instructions: "Cook ground beef. Add taco seasoning and water. Simmer for 10 minutes. Heat tortillas. Assemble tacos with beef, lettuce, tomato, cheese, and sour cream.",
    minutes_to_complete: 20
)

Recipe.create(
    title: "Rice", 
    instructions: "Measure 1 cup of rice in bowl of rice cooker. Wash rice. Fill with water to level indicated by manufacturer. Put bowl in rice cooker. Press 'Cook'. Enjoy!",
    minutes_to_complete: 10
  )

Recipe.create(
    title: "Pancakes",
    instructions: "Mix flour, baking powder, salt, sugar, and cinnamon. Add milk, egg, and melted butter. Heat a skillet. Cook pancakes. Serve with butter and syrup.",
    minutes_to_complete: 15
)  

puts "Seed data created successfully."
