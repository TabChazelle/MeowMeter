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

reaction_types = ['love', 'sad', 'laugh', 'happy', 'cute']

# Shuffle the pun_names array to randomize the order
pun_names.shuffle!

# Initialize an empty array to keep track of assigned names
assigned_names = []

18.times do |i|
    # Get the next available name from the shuffled pun_names array
    name = pun_names.shift
  
    # If all names have been used, shuffle the pun_names array again
    if name.nil?
      pun_names.shuffle!
      name = pun_names.shift
    end
  
    # Create the kitten with the assigned name
    kitten = Kitten.create(
      name: name,
      image_url: "cat_#{i + 1}.jpg"
    )
  
    # Generate random reaction counts for each reaction type
    reaction_types.each do |reaction_type|
      kitten.reactions.create(reaction_type: reaction_type, reaction_count: rand(0..10))
    end
  end