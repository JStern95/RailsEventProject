# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Creating Test App"
RecordLabel.create(name: "Epic Records")
puts "Created #{RecordLabel.all.last}"
Artist.create(name: "Pearl Jam", record_label_id: 1)
puts "Created #{Artist.all.last}"
Event.create(location: "New York City", venue: "MSG",artist_id: 1)
puts "Created #{Event.all.last}"
User.create(username: "EventLover", location: "New York City")
puts "Created #{User.all.last}"
Review.create(rating: 6, content: "They're old", user_id: 1, event_id: 1)
puts "Created #{Review.all.last}"
Ticket.create(user_id: 1, event_id: 1)
puts "Created #{Ticket.all.last}"
puts "Done"
