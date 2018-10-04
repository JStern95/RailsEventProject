# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
# RecordLabel.create(name: "Epic Records")
# puts "Created #{RecordLabel.all.last}"
# Review.create(rating: 6, content: "They're old", user_id: 1, event_id: 1)
# puts "Created #{Review.all.last}"
# puts "Done"
Artist.destroy_all
Event.destroy_all
User.destroy_all
Ticket.destroy_all

puts "Creating Test App"
Artist.create(name: "Christina Aguilera", username: "ChristinaAguilera", password: "password", email: "Pearljam@pearljam.com", image: "https://pbs.twimg.com/profile_images/1007471233582022656/_PCnUad5_400x400.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Bruno Mars", username: "BrunoMars", password: "password", email: "BrunoMars@pearljam.com", image: "https://i.scdn.co/image/aa32d6d4ca2467974403518dd3ebfe8831c5ced1" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Florence and the Machine", username: "FlorenceMachine", password: "password", email: "FlorenceMachine@pearljam.com", image: "https://images-na.ssl-images-amazon.com/images/I/C17HLImbaES._SL1000_.png" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Maroon 5", username: "Maroon5", password: "password", email: "Maroon5@pearljam.com", image: "https://www.teksteshqip.com/img_upz/allart_full/70253.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Daughtry", username: "Daughtry", password: "password", email: "Daughtry@pearljam.com", image: "https://pbs.twimg.com/profile_images/985969700093022209/oW_Yg9H3_400x400.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Justin Timberlake", username: "JustinTimberlake", password: "password", email: "JustinTimberlake@pearljam.com", image: "https://pbs.twimg.com/profile_images/1046895903095820289/9iU-AMuM_400x400.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Elton John", username: "EltonJohn", password: "password", email: "EltonJohn@pearljam.com", image: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Elton_John_in_Norway_4.jpg/220px-Elton_John_in_Norway_4.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Nicki Minaj", username: "NickiMinaj", password: "password", email: "NickiMinaj@pearljam.com", image: "https://pbs.twimg.com/profile_images/983786584322527232/-JbOHV7W_400x400.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "The Neighborhood", username: "TheNeighborhood", password: "password", email: "TheNeighborhood@pearljam.com", image: "https://ichef.bbci.co.uk/images/ic/960x540/p01v1hrg.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Lily Allen", username: "LilyAllen", password: "password", email: "LilyAllen@pearljam.com", image: "https://images-na.ssl-images-amazon.com/images/I/B1-0x6XdatS._SL1000_.png" )
puts "Created #{Artist.all.last.name}"
