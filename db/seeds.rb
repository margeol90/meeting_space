# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all offices and users"
Office.destroy_all
User.destroy_all

puts "Creating users"
user1 = User.create!(first_name: "Landlord", last_name: "Name", email: "landlord@test.com", password: "12345678")
user2 = User.create!(first_name: "Professional", last_name: "Name", email: "professional@test.com", password: "12345678")

puts "Creating offices"
office1 = Office.create!(
  name: "Office space in London",
  max_capacity: 10,
  meeting_rooms: 2,
  price: 350,
  address: "8 Devonshire Square London EC2M 4YJ",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office1 = Office.create!(
  name: "Office space in Fankfurt",
  max_capacity: 50,
  meeting_rooms: 4,
  price: 750,
  address: "8 Taunusanlage Frankfurt, HE 60329",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
puts "Complete"
