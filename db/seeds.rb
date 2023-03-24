# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Destroying all notifications, offices, facilities and users"
Notification.destroy_all
Office.destroy_all
User.destroy_all
Facility.destroy_all

puts "Creating users"
user1 = User.create!(first_name: "Landlord", last_name: "Name", email: "landlord@test.com", password: "123456")
user2 = User.create!(first_name: "Professional", last_name: "Name", email: "professional@test.com", password: "123456")
user3 = User.create!(first_name: "Margarita", last_name: "Dagla", email: "margarita@test.com", password: "123456")
user4 = User.create!(first_name: "Jide", last_name: "Muritala", email: "jide@test.com", password: "123456")
user5 = User.create!(first_name: "Fran", last_name: "Lago", email: "fran@test.com", password: "123456")
user6 = User.create!(first_name: "Michael", last_name: "Garbutt", email: "michael@test.com", password: "123456")
user7 = User.create!(first_name: "John", last_name: "Smith", email: "john@test.com", password: "123456")
user8 = User.create!(first_name: "Kevin", last_name: "Davies", email: "kevin@test.com", password: "123456")
user9 = User.create!(first_name: "Michael", last_name: "Owen", email: "owen@test.com", password: "123456")
user10 = User.create!(first_name: "Fernando", last_name: "Hierro", email: "fernando@test.com", password: "123456")

puts "Creating offices"
office1 = Office.create!(
  name: "12 Hay Hill",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "12 Hay Hill, London W1J 8NR, United Kingdom",
  description: "LONDON’S PREMIUM BUSINESS MEMBERS CLUB & OFFICE SPACE IN MAYFAIR. Conceived and built as a private members club for business, the six-storey building is unique in providing business leaders and entrepreneurs with high-specification facilities in which to work alongside exceptional leisure space and five-star service, all in the heart of Mayfair.",
  user_id: user1.id
)
office2 = Office.create!(
  name: "Tribes Frankfurt Marienforum",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Mainzer Landstraße 1, 60329 Frankfurt am Main, Germany",
  description: "Seeking a new space for your business?

  Tribes Frankfurt Marienforum is located in the city centre, surrounded by many skyscrapers in the Central Business District. The CBD forms the financial heart of Frankfurt, and many international companies have established themselves in the area. Tribes is located on the first and eighth floors and offers a nice view of the CBD.

  At Tribes you can flexibly rent an office for a day, a week, a month, a year or longer. Whether you work alone or need space for 100 people, you choose how you want to work.

  You can huddle in meeting rooms which are fully equipped with top quality audio and video materials for conference or brainstorming session.
  Enjoy also the benefits of a Tribes virtual office without having to be present. We offer fax, email and phone services so you can concentrate on your work.",
  user_id: user1.id
)
office3 = Office.create!(
  name: "Silversquare Stéphanie - Espace de coworking à Bruxelles",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Av. Louise 54, 1050 Bruxelles, Belgium",
  description: "The coworking space of Place Stéphanie.
  Coworking memberships to suit your immediate and future needs
  Our coworking space Silversquare Stéphanie has many memberships for you to choose from and expand within Silversquare. Our flexibility is what sets us apart. We can change and adapt memberships to suit your immediate and future needs. Our full-service and fully furnished offices and hot desks are designed with your comfort and productivity in mind. Our members get full access to our open spaces, 24 hours a day, 7 days a week.

  All-inclusive and no hidden fees office solutions
  Our memberships are straightforward with no hidden fees. They come with a prestigious Brussels address on avenue Louise. The attentive and dedicated Office Managers will handle your mail and packages daily, so you can focus on your important projects.

  We have taken care of all the details, so you don't have to. Our coworking and meeting rooms are equipped with high-speed Wi-Fi so your meetings go off without a hitch. We can plan your meetings from start to finish with delicious catering. We would love to sit with you and discuss the perfect meeting for you and your guests.

  Entrepreneurs from all fields of work
  Our community is full of entrepreneurs like you who want to thrive in their field. Coffee breaks at the office have never been so interesting. An impromptu meet-up with a fellow member is a surefire way to brainstorm ideas and collaborations. Come and grab a coffee with us!",
  user_id: user1.id
)
office4 = Office.create!(
  name: "Madrid Office Business Center - Cuzco",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Av. de Brasil, 29, 28020 Madrid",
  description: "Located in the prestigious Paseo de la Castellana avenue, this business center will give your company an excellent image. Our virtual office plans will consolidate your presence in Madrid without renting permanent office. Our solutions inlclude mail reception and the use of our prestigious address in all your supports.

  Are you looking for top class offices for rent in Madrid ? Do you want a turnkey solution including everything?

  Do you also want flexible terms, far away from classical real estate solutions?

  Last but not least, you want to be located in the heart of Madrid, in a prime location?

  Our Madrid Cuzco business center will probably match your request. Located at the 19th floor of the famous Cuzco IV bulding, this business center opened in 2015 and provides new generation wokspaces and meeting rooms. Madrid Barajas airport is only 15 minutes. Come and discover the benefits of our serviced office solutions in Madrid Cuzco!",
  user_id: user1.id
)
office5 = Office.create!(
  name: "KAOS BERLIN",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Wilhelminenhofstraße 92, 12459 Berlin, Germany",
  description: "Since 2013 we have been revitalizing the halls on the banks of the Spree. Around 100 creative people from a wide variety of areas are now working here in a unique blend in coworking.



  Arts and crafts in addition to programming, furniture design in addition to fashion design, art in addition to upcycling, metal workshop in addition to 3D printing, sound and music studio, film and photography and much, much more…



  This colorful, creative potpourri creates amazing collaborations and unusual projects every day.",
  user_id: user1.id
)
office6 = Office.create!(
  name: "Coworking Space München | MANA",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Leopoldstraße 31, 80802 München, Germany",
  description: "Our meeting room offers enough space for up to 6 people to work together in a beautifully designed environment. Cozy and at the same time soothing due to the dark wall paint, the room is exactly the right location to jointly develop strategies, solve problems or organize small meetups.

  In order to be able to present your ideas optimally, you have a large 55 inch screen available and also a magnetic flipchart to develop ideas together.
  Do you also need paper and pens in addition to the flipchart? No problem, we can also provide you with everything you need.

  With us you will probably get one of the best coffees to offer the Munich office scene, from a small private roaster that gets your beans directly from the farmer. In addition, there are also selected types of tea and of course we provide you with the good Munich water free of charge, quietly and lively.

  The meeting room is located in a small, coolly designed coworking space ( MANA ) in a prime location on Leopoldstrasse in a beautiful old building. There is a direct connection to public transport, such as bus and subway ( Giselastraße ), less than 100 meters away.

  The room can be booked every day, if you also have to spend a working day on a weekend.",
  user_id: user1.id
)
office7 = Office.create!(
  name: "Amsterdam Coworking",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Keizersgracht 391, 1016 EJ Amsterdam, Netherlands",
  description: "Establish your company at our unique location, or drop by for a meeting or flexible workspace.
  Are you looking for inspirational, attractive and affordable flexible work spaces in the center of Amsterdam? Where you can work comfortably and productively, while being in contact with other flex workers? Where you can enjoy a good cup of coffee or tea? Then you are at the right place!

  Thanks to our Virtual Office service, you can also establish your company at the Keizersgracht in the center of Amsterdam, without the additional high costs. Additionally, you can take advantage of various supplementary services.",
  user_id: user1.id
)
office8 = Office.create!(
  name: "ViOS Co-working",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Fidiou 9, Athina 106 78, Greece",
  description: "Why Us
  ViOS is the first coworking space in Greece that has turned workplace well-being into a philosophy and has been designed following the WELL Building Standards focusing on 100 features across 11 concepts: Air, Water, Nourishment, Light, Movement, Thermal Comfort, Sound, Materials, Mind, Community and Innovation.



  Our workplace is crucial for our quality of life and well-being. Today, the largest companies around the world, like Google, have started focusing on their most important asset, namely the mental and physical health of their employees.",
  user_id: user1.id
)
office9 = Office.create!(
  name: "Oppidan Social Edge Street",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "23 Edge St, Manchester, United Kingdom ",
  description: "Everything you receive is free, the coffee the cake, the wifi, everything, you pay only for the time you spend at just 8p a minute.

  Situated in Manchester’s Northern Quarter, our Edge Street branch is the largest Oppidan Social in the world. Hidden on the first floor of an unassuming office block, our home-from-home is made up of a giant 3,000 square foot sitting room in one half. The other half consists of our Studio, Class Room, Dining Room and Morning Room for events, workshops and activities.",
  user_id: user1.id
)
office10 = Office.create!(
  name: "Morning, Concorde",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "4 Rue Royale, 75008 Paris, France",
  description: "Morning Concorde is undoubtedly the most prestigious coworking space in the capital.

  Crown furniture, French Revolution, abolition of slavery, the walls of Morning Concorde are home to 265 years of extraordinary history.

  Located within the Hôtel de la Marine, it offers its occupants an exceptional showcase of French heritage, situated on Place de la Concorde in the 8th arrondissement of Paris.

  The immense space is spread over 3 floors and nearly 6000 m², each level benefiting from the light of 2 interior courtyards.

  The companies housed there benefit from a concierge service and all the high-end Morning services.

  The space's large lounge offers a breathtaking view of the Place de la Concorde, the jewel in the crown of this monument.",
  user_id: user1.id
)
office11 = Office.create!(
  name: "Milan, Spaces San Babila",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Corso Europa, 15, 20122 Milano MI, Italy",
  description: "INJECT STYLE INTO YOUR BUSINESS IN FASHIONABLE MILAN
  You’re sure to be inspired by the elegant and cool environment of Spaces San Babila, on Corso Europa just steps from Milan’s fashion quarter. From the impressive lobby, through the bright and airy private or shared workspaces and meeting rooms, to the rooftop terrace with stunning views of the Duomo cathedral, this is where your business will thrive.

  Plug into the superfast WiFi and the energy of our buzzing business community of like-minded entrepreneurs and friendly local team. They’ll help your work go smoothly and when it’s done for the day, step out into the vibrant surrounding area packed with shops, restaurants, history and culture. Spark ideas by soaking up the art at Museo del Novecento and Leonardo3 Museum, or use the San Babila subway on your doorstep to easily reach the rest of Milan’s attractions.",
  user_id: user1.id
)
office12 = Office.create!(
  name: "Regus - Turin Ferrucci",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "C.so Francesco Ferrucci, 112/Edificio B1, 10138 Torino TO, Italy",
  description: "If you’re looking for beautifully-designed office space for rent, ours are suitable for any size of team and come fully serviced. So you can concentrate on growing your business distraction-free. Whether you need something for the short term, longer term or want to take a flexible approach, we’ve got an office space rental solution to suit you.

  Our beautifully designed coworking spaces, across thousands of locations around the world are open to everyone. Choose your perfect location with options for a dedicated desk or you can drop in and hot-desk in a shared office space as needed.",
  user_id: user1.id
)
office13 = Office.create!(
  name: "NKOOWOORK – Coworking in Lisbon",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Praceta da Tabaqueira, Praceta, B Lote A 5º I, 1950-256 Lisboa, Portugal",
  description: "With more than 1500 m2, divided into 3 spaces, NKOOWOORK brings you a creative decoration, in an industrial environment, in Braço de Prata.

  From flexible or dedicated desks, to private offices, meeting rooms and even a photography studio, here you can be yourself and belong to a cowork that will help you be more productive and leverage your company!",
  user_id: user1.id
)
office14 = Office.create!(
  name: "Porto i/o Riverside",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Rua do Infante D. Henrique 73 4º andar, 4050-492 Porto, Portugal",
  description: "WELCOME TO PORTO I/O - YOUR COMMUNITY-CENTRED COWORKING SPACE.
  Olá! We are Porto i/o and we have 4 beautiful coworking space across Porto. All of them are set in unique and historical buildings in the heart of the best areas in Porto.

  If you are looking for a great place to work from, with an amazing environment, a talented community, and all the amenities you need, come to say hi!

  Tired of walking around? We’re listeners. Pop by, grab a coffee, jump on the wifi, and tell us what you’re up to…",
  user_id: user1.id
)
office15 = Office.create!(
  name: "Àtic Barcelona - Coworking y Business Center",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "C/ de la Diputació, 211, 08011 Barcelona",
  description: "Àtic Barcelona is a business center located in the neighborhood of Eixample de Barcelona, which has a 2400 m2 space with an outdoor terrace, unique and avant-garde.

  It has a total of 42 coworking positions located in the center of the space, creating an enveloping sensation in a totally open space. In addition, thanks to its large windows, natural light is undeniable, which produces a feeling of warmth when working in the space.",
  user_id: user1.id
)
office16 = Office.create!(
  name: "Basecamp Liverpool Ltd",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "49 Jamaica St, Liverpool L1 0AH, United Kingdom",
  description: "At Basecamp Liverpool we offer more than just a professional office space, we are a vibrant community of like-minded entrepreneurs; a supportive environment where members benefit from co-working by sharing knowledge, ideas, connections and forming long lasting friendships as well as opportunities to grow their respective businesses.

  We are fortunate to have some of Liverpool’s brightest creative talent amongst our members which currently include:

  Architects
  Software developers
  Web and mobile application developers
  Graphic designers
  Digital marketing
  Public Relations
  Copywriters and content writers
  Artists, Illustrators & Animators
  Videographers and Film makers
  IT Support
  Health & Well Being (Life Coaches, Mental Health Training etc)
  Language translators
  Being based at Baltic Creative Campus in the heart of the city’s growing creative quarter brings multiple additional benefits including the fact that we co-habit with a wider community of other Digital and creative businesses which provides collaborative working opportunities, access to meeting rooms with conference facilities, regular networking and workshop events, the popular 92 Degrees  coffee shop on site, affordable parking and good local public transport links.

  Many entrepreneurs have benefited by starting out at Basecamp and then as they have grown moved into the larger office spaces available within Baltic Creative and the surrounding area.",
  user_id: user1.id
)
office17 = Office.create!(
  name: "Коворкинг (Coworking) SREDA ",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Presnenskaya Naberezhnaya, 12, Moscow, Russia, 123100",
  description: "One of the market leaders in terms of the amount of space per workplace!

  Convenience and comfort of residents provides thoughtful zoning with the maximum variety of functions: rooms of various layouts, Skype rooms, meeting rooms, lounge areas, event hall, coffee point, etc.

  Microclimate is provided with modern air conditioning and ventilation systems!",
  user_id: user1.id
)
office18 = Office.create!(
  name: "Emirates Co-Work, London",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "Hornsey Rd, London N7 7AJ",
  description: "Rent a space inside Arsenal's Emirates Stadium. Be inspired by the history to do your best work. Offices provide a view of the pitch. Include AC, meeting rooms, high speed internet ",
  user_id: user1.id
)
office19 = Office.create!(
  name: "The Shard - London ",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: " 32 London Bridge Street, London SE1 9SG",
  description: "Rent office space in Western Europe's tallest building. The best views in the city, book today!",
  user_id: user1.id
)
office20 = Office.create!(
  name: "The Walkie Talkie",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: " 20 Fenchurch St, London EC3M 8AF",
  description: "Occupying a prominent site in the heart of the City of London, 20 Fenchurch Street is a landmark building that stands apart from the crowd of the City Cluster and overlooks the River Thames. There is availability on part Level 15 of this iconic feature of the London skyline.

  Part Level 15 offers a high-quality existing fit-out, with open-plan workstations and meeting room facilities. Floor-to-ceiling glazing provides a steady stream of natural light throughout the day, and magnificent views creating an inspirational working environment.!",
  user_id: user1.id
)
office21 = Office.create!(
  name: "The Cheesegrater",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: " 122 Leadenhall Street, 122 Leadenhall St, London EC3V 4AB",
  description: "This distinctive, tapering shape is its defining characteristic. It was developed by architect RSH+P from the earliest design stage as a response to specific planning requirements: to protect views of major London landmarks, especially St Paul’s Cathedral in the City and the Palace of Westminster.",
  user_id: user1.id
)
office22 = Office.create!(
  name: "10 Downing Street",
  max_capacity: (10..100).to_a.sample,
  meeting_rooms: (1..10).to_a.sample,
  price: (300..1500).to_a.sample,
  address: "10 Downing St, London SW1A 2AA
  ",
  description: "Rub shoulders with the political elite by renting office space in 10 Downing Street. Offices come fully equipped with all office facilities",
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
office18.photo.attach(io: File.open(Rails.root.join("app/assets/images/office18.jpg")), filename: "office18")
office19.photo.attach(io: File.open(Rails.root.join("app/assets/images/office19.jpg")), filename: "office19")
office20.photo.attach(io: File.open(Rails.root.join("app/assets/images/office20.jpg")), filename: "office20")
office21.photo.attach(io: File.open(Rails.root.join("app/assets/images/office21.jpg")), filename: "office21")
office22.photo.attach(io: File.open(Rails.root.join("app/assets/images/office22.jpg")), filename: "office22")

puts "Adding user avatars"
user1.avatar.attach(io: File.open(Rails.root.join("app/assets/images/user1.jpg")), filename: "user1")
user2.avatar.attach(io: File.open(Rails.root.join("app/assets/images/user2.jpg")), filename: "user2")

puts "creating facilities"
Facility.create!(name: "Microwave")
Facility.create!(name: "Monitor")
Facility.create!(name: "Fridge")
Facility.create!(name: "Desk space")
Facility.create!(name: "Printer")
Facility.create!(name: "Projector")
Facility.create!(name: "Parking")
Facility.create!(name: "Coffee-machine")
Facility.create!(name: "Conference technology")
Facility.create!(name: "Fast Wi-Fi")
Facility.create!(name: "Accessibility")
Facility.create!(name: "Proximity to train station")
Facility.create!(name: "Proximity to bus stop")

puts "Complete"
