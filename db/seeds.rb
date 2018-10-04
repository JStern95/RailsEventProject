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

Venue.create(name: "Madison Square Garden", image: "https://idktonight.com/wp-content/uploads/2017/09/Madison3.jpg" )
puts "Created #{Venue.all.last.name}"

Venue.create(name: "Radio City Music Hall", image: "https://www.msg.com/wp-content/uploads/2017/08/TonyBennett_091516_204W-L-1590x890-OPT-1280x720.jpg" )
puts "Created #{Venue.all.last.name}"

Venue.create(name: "Beacon Theatre", image: "https://i.axs.com/14-08212012-50342a1d06df9.jpeg" )
puts "Created #{Venue.all.last.name}"

Venue.create(name: "Terminal 5", image: "https://blog.tickpick.com/wp-content/uploads/2013/02/Terminal-V-Seating.jpg" )
puts "Created #{Venue.all.last.name}"

Venue.create(name: "Barclays Center", image: "https://www.rateyourseats.com/shared/1463623674_59798825.jpg" )
puts "Created #{Venue.all.last.name}"

Venue.create(name: "Wells Fargo Center", image: "https://pbs.twimg.com/profile_images/1007471233582022656/_PCnUad5_400x400.jpg" )
puts "Created #{Venue.all.last.name}"

Venue.create(name: "Union Transfer", image: "https://pbs.twimg.com/profile_images/1007471233582022656/_PCnUad5_400x400.jpg" )
puts "Created #{Venue.all.last.name}"

Venue.create(name: "TD Garden", image: "https://pbs.twimg.com/profile_images/1007471233582022656/_PCnUad5_400x400.jpg" )
puts "Created #{Venue.all.last.name}"



Artist.create(name: "Christina Aguilera", username: "ChristinaAguilera", password: "password", email: "Pearljam@pearljam.com", image: "https://pbs.twimg.com/profile_images/1007471233582022656/_PCnUad5_400x400.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Bruno Mars", username: "BrunoMars", password: "password", email: "BrunoMars@pearljam.com", image: "https://i.scdn.co/image/aa32d6d4ca2467974403518dd3ebfe8831c5ced1" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Florence and the Machine", username: "FlorenceMachine", password: "password", email: "FlorenceMachine@pearljam.com", image: "https://s3.amazonaws.com/busites_www/woodlandscenter2016com/pages/Event%20Square%20-%20Florence-%202.png" )
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

Artist.create(name: "The Neighborhood", username: "TheNeighborhood", password: "password", email: "TheNeighborhood@pearljam.com", image: "https://media.pitchfork.com/photos/5a9f0b78b848c0268b2016b9/1:1/w_320/The%20Neighbourhood.jpg" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Lily Allen", username: "LilyAllen", password: "password", email: "LilyAllen@pearljam.com", image: "https://scontent-lga3-1.xx.fbcdn.net/v/t1.0-9/25299247_10155841635629323_1548655410207975619_n.jpg?_nc_cat=1&oh=a59b2ddd4cefeebf6049e6d0c8d8f144&oe=5C4D9900" )
puts "Created #{Artist.all.last.name}"

Artist.create(name: "Lykke Li", username: "LykkeLi", password: "password", email: "LykkeLi@pearljam.com", image: "https://timedotcom.files.wordpress.com/2014/05/ineverlearn.png" )
puts "Created #{Artist.all.last.name}"



# Event.create(city: "New York City", venue_id: 2, show_date: "2018/10/03", show_time: "20:00", artist_id: 1)
# puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 3, show_date: "2018/10/04", show_time: "20:00", artist_id: 5)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 5, show_date: "2018/10/09", show_time: "19:00", artist_id: 3)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 5, show_date: "2018/10/04", show_time: "20:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 5, show_date: "2018/10/05", show_time: "20:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 4, show_date: "2018/10/05", show_time: "20:00", artist_id: 9)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 5, show_date: "2018/10/11", show_time: "19:30", artist_id: 8)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/10/14", show_time: "19:30", artist_id: 4)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/10/24", show_time: "20:00", artist_id: 6)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/10/18", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/10/19", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/11/08", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/11/09", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2019/03/05", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2019/03/06", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 4, show_date: "2018/10/20", show_time: "19:00", artist_id: 10)
puts "Created #{Event.all.last.venue_id}"



Event.create(city: "Philadelphia", venue_id: 6, show_date: "2018/10/14", show_time: "19:00", artist_id: 3)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Philadelphia", venue_id: 6, show_date: "2018/10/12", show_time: "20:00", artist_id: 4)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Philadelphia", venue_id: 6, show_date: "2018/12/17", show_time: "19:30", artist_id: 6)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Philadelphia", venue_id: 6, show_date: "2019/11/08", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Philadelphia", venue_id: 6, show_date: "2019/11/09", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Philadelphia", venue_id: 7, show_date: "2018/10/23", show_time: "20:30", artist_id: 10)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Philadelphia", venue_id: 7, show_date: "2018/10/08", show_time: "20:30", artist_id: 11)
puts "Created #{Event.all.last.venue_id}"



Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
puts "Created #{Event.all.last.venue_id}"




Event.create(city: "Boston", venue_id: 8, show_date: "2018/10/06", show_time: "20:00", artist_id: 7)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Boston", venue_id: 8, show_date: "2018/10/07", show_time: "19:30", artist_id: 4)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Boston", venue_id: 8, show_date: "2018/10/12", show_time: "19:00", artist_id: 3)
puts "Created #{Event.all.last.venue_id}"

Event.create(city: "Boston", venue_id: 8, show_date: "2018/10/18", show_time: "19:30", artist_id: 6)
puts "Created #{Event.all.last.venue_id}"









# Event.create(city: "Boston", venue_id: 8, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id}"
#
# Event.create(city: "Boston", venue_id: 8, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id}"
#
# Event.create(city: "Boston", venue_id: 8, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id}"
#
# Event.create(city: "Boston", venue_id: 8, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id}"



#
# Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id}"
#
# Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id}"
#
# Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id}"
#
# Event.create(city: "New York City", venue_id: 1, show_date: "2018/09/20", show_time: "21:00", artist_id: 2)
# puts "Created #{Event.all.last.venue_id_id}"
