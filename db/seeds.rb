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
user2 = User.create!(first_name: "Professional", last_name: "Name", email: "professional@test.com",
                     password: "12345678")

puts "Creating offices"
office1 = Office.create!(
  name: "12 Hay Hill",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "12 Hay Hill, London W1J 8NR, United Kingdom",
  description: "LONDON’S PREMIUM BUSINESS MEMBERS CLUB & OFFICE SPACE IN MAYFAIR/bConceived and built as a private members club for business, the six-storey building is unique in providing business leaders and entrepreneurs with high-specification facilities in which to work alongside exceptional leisure space and five-star service, all in the heart of Mayfair.",
  user_id: user1.id
)
office2 = Office.create!(
  name: "Tribes Frankfurt Marienforum",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Mainzer Landstraße 1, 60329 Frankfurt am Main, Germany",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office3 = Office.create!(
  name: "Silversquare Stéphanie - Espace de coworking à Bruxelles",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Av. Louise 54, 1050 Bruxelles, Belgium",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office4 = Office.create!(
  name: "Madrid Office Business Center - Cuzco",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Av. de Brasil, 29, 28020 Madrid",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office5 = Office.create!(
  name: "Berlin Business Location Center",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Fasanenstraße 85, 10623 Berlin, Germany",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office6 = Office.create!(
  name: "Coworking Space München | MANA",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Leopoldstraße 31, 80802 München, Germany",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office7 = Office.create!(
  name: "Amsterdam Coworking",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Keizersgracht 391, 1016 EJ Amsterdam, Netherlands",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office8 = Office.create!(
  name: "ViOS Co-working",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Fidiou 9, Athina 106 78, Greece",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office9 = Office.create!(
  name: "Coworking Ltd",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Virginia House 5-7 Great Ancoats St, Ancoats, Manchester M4 5AD, United Kingdom",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office10 = Office.create!(
  name: "Morning, Concorde",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "4 Rue Royale, 75008 Paris, France",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office11 = Office.create!(
  name: "Milan, Spaces San Babila",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Corso Europa, 15, 20122 Milano MI, Italy",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office12 = Office.create!(
  name: "Regus - Turin Ferrucci",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "C.so Francesco Ferrucci, 112/Edificio B1, 10138 Torino TO, Italy",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office13 = Office.create!(
  name: "NKOOWOORK – Coworking in Lisbon",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Praceta da Tabaqueira, Praceta, B Lote A 5º I, 1950-256 Lisboa, Portugal",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office14 = Office.create!(
  name: "Porto i/o Riverside",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Rua do Infante D. Henrique 73 4º andar, 4050-492 Porto, Portugal",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office15 = Office.create!(
  name: "Àtic Barcelona - Coworking y Business Center",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "C/ de la Diputació, 211, 08011 Barcelona",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office16 = Office.create!(
  name: "Basecamp Liverpool Ltd",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "49 Jamaica St, Liverpool L1 0AH, United Kingdom",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent pharetra ac justo eget gravida. Vestibulum varius a nisi a mollis. Aliquam tempor turpis a turpis luctus ullamcorper. Nunc feugiat luctus dui id placerat. Praesent sit amet dignissim nulla. Fusce sodales eros vel nunc viverra, vel scelerisque lacus sodales. Quisque eu mollis nulla, sit amet suscipit mi. Proin elementum risus in dapibus tristique. Mauris a condimentum nisi. Nulla eget porta magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vestibulum fringilla aliquet tortor id pharetra. Nulla quis lacinia nibh. Etiam at ullamcorper est. Curabitur eu pellentesque metus, ac accumsan urna. Donec sed neque felis. Integer sit amet rutrum orci. Aenean ultricies, velit quis tincidunt convallis, diam urna ultrices magna, nec auctor neque dui sit amet nisi. Pellentesque accumsan, nulla vitae euismod ultrices, sapien justo eleifend urna, rutrum volutpat urna nulla quis erat. Vivamus quis velit eget neque pretium posuere. Ut mollis ex vitae neque dignissim dapibus. Integer in volutpat massa. Cras fermentum velit quis ultrices dapibus. Nulla sed commodo sapien, a viverra nulla. Integer auctor nisi felis, vel egestas lacus gravida in. Proin eget commodo ipsum. Nulla at dapibus dolor.",
  user_id: user1.id
)
office17 = Office.create!(
  name: "Коворкинг SREDA",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Presnenskaya Naberezhnaya, 12, Moscow, Russia, 123100",
  description: "SREDA — one of the market leaders in terms of the amount of space per workplace!/bConvenience and comfort of residents provides thoughtful zoning with the maximum variety of functions: rooms of various layouts, Skype rooms, meeting rooms, lounge areas, event hall, coffee point, etc./bMicroclimate is provided with modern air conditioning and ventilation systems!",
  user_id: user1.id
)

puts "Attaching office images"
office1.photo.attach(io: File.open(Rails.root.join("app/assets/images/office1.jpg")), filename: "office1")
office2.photo.attach(io: File.open(Rails.root.join("app/assets/images/office2.jpg")), filename: "office2")
office3.photo.attach(io: File.open(Rails.root.join("app/assets/images/office3.jpg")), filename: "office3")
office4.photo.attach(io: File.open(Rails.root.join("app/assets/images/office4.jpg")), filename: "office4")
office5.photo.attach(io: File.open(Rails.root.join("app/assets/images/office5.jpg")), filename: "office5")
office6.photo.attach(io: File.open(Rails.root.join("app/assets/images/office6.jpg")), filename: "office6")
office7.photo.attach(io: File.open(Rails.root.join("app/assets/images/office7.jpg")), filename: "office7")
office8.photo.attach(io: File.open(Rails.root.join("app/assets/images/office8.jpg")), filename: "office8")
office9.photo.attach(io: File.open(Rails.root.join("app/assets/images/office9.jpg")), filename: "office9")
office10.photo.attach(io: File.open(Rails.root.join("app/assets/images/office10.jpg")), filename: "office10")
office11.photo.attach(io: File.open(Rails.root.join("app/assets/images/office11.jpg")), filename: "office11")
office12.photo.attach(io: File.open(Rails.root.join("app/assets/images/office12.jpg")), filename: "office12")
office13.photo.attach(io: File.open(Rails.root.join("app/assets/images/office13.jpg")), filename: "office13")
office14.photo.attach(io: File.open(Rails.root.join("app/assets/images/office14.jpg")), filename: "office14")
office15.photo.attach(io: File.open(Rails.root.join("app/assets/images/office15.jpg")), filename: "office15")
office16.photo.attach(io: File.open(Rails.root.join("app/assets/images/office16.jpg")), filename: "office16")
office17.photo.attach(io: File.open(Rails.root.join("app/assets/images/office17.jpg")), filename: "office17")

puts "Complete"
