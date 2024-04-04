# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

pun_names = [
  "Purrlock Holmes",
  "Meowrio",
  "Sir Pounce-a-lot",
  "Leonardo DiCatrio",
  "Catrick Swayze",
  "Lord Purrington",
  "Catrick Stewart",
  "Meowzart",
  "Furrball",
  "Whiskers",
  "Furrgie",
  "Clawdia Schiffer",
  "Meowly Cyrus",
  "Kitty Purry",
  "Garfield",
  "Tom",
  "Mewbacca",
  "Cat"
]

18.times do |i|
    Kitten.create(
      name: pun_names[i],
      image_url: "cat_#{i + 1}.jpg",
      love: 0,
      sad: 0,
      laugh: 0,
      happy: 0,
      cute: 0
    )
  end