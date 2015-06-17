# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Hobby.delete_all
UsersHobby.delete_all
Location.delete_all
UsersLocation.delete_all
EventsHobby.delete_all
UsersEvent.delete_all
Comment.delete_all

default = File.open('app/assets/images/profiles/defaultprofile.png')
andi = File.open('app/assets/images/profiles/1.jpg')

users = User.create!([
{firstname: 'Testing', lastname:'Tester', image: 'app/assets/images/profiles/defaultprofile.png', :email => "test@test.de", :password => "test1234", :password_confirmation => "test1234" }, 
{firstname: 'Andi', lastname:'Maier',image: 'app/assets/images/profiles/1.jpg', :email => "Andreas.Maier@hobbyisten.de", :password => "testtest", :password_confirmation => "testtest" },
{firstname: 'Markus', lastname:'Schöllner',image: 'app/assets/images/profiles/defaultprofile.png', :email => "Markus.Schoellner@hobbyisten.de", :password => "test1234", :password_confirmation => "test1234" },
{firstname: 'Andreas', lastname:'Hilmer',image: 'app/assets/images/profiles/defaultprofile.png', :email => "Andreas.Hilmer@hobbyisten.de", :password => "test1234", :password_confirmation => "test1234" },
{firstname: 'Thomas', lastname:'Hantschel',image: 'app/assets/images/profiles/defaultprofile.png', :email => "Thomas.Hantschel@hobbyisten.de", :password => "test1234", :password_confirmation => "test1234" }
])


hobbies = Hobby.create([ {name: 'Fußball', description: 'ein Ballspiel für zwei Mannschaften, bei dem die Spieler den Ball nur mit dem Fuß (und mit dem Kopf), aber nicht mit der Hand berühren dürfen und bei dem es darum geht, möglichst viele Tore zu schießen'},
                         {name: 'Handball', description: 'eine Ballsportart für zwei Mannschaften, bei der die Spieler den Ball mit den Händen werfen und versuchen, ihn ins gegnerische Tor zu spielen.'},
                         {name: 'Joggen', description: 'Füße schnell voreinander setzen'},
                         {name: 'Tanzen', description: 'Choreographisches bewegen zur Musik'},
                         {name: 'Mountainbiken', description: 'Mit dem Fahrrad durch unwegsames Gelände'},
                         {name: 'Reiten', description: 'Mit einem Pferd durch die Gegend galoppieren'},
                         {name: 'Skifahren', description: 'Auf zwei Brettern an den Füßen einen schneebedeckten Berg abfahren'},
                         {name: 'Angeln', description: 'Mit einer Angel Fische an Flüßen und Seen fangen'},
                         {name: 'Segeln', description: 'Mit einem Seggelboot über einen See fahren'},
                         {name: 'Jagen', description: 'Mit einer Waffe Tiere im Wald jagen'},
                         {name: 'Surfen', description: 'Mit einem Surfbrett über die Wellen reiten'},
                         {name: 'Snowboarden', description: 'Auf einem Brett an den Füßen einen schneebedeckten Berg abfahren'},             				 {name: 'Modelleisenbahn', description: 'Modelleisenbahnen aufbauen und Tips und Tricks austauschen'}])

users_hobbies = UsersHobby.create([user_id: users[0].id, hobby_id: hobbies[0].id])
users_hobbies = UsersHobby.create([user_id: users[0].id, hobby_id: hobbies[1].id])
users_hobbies = UsersHobby.create([user_id: users[0].id, hobby_id: hobbies[2].id])
users_hobbies = UsersHobby.create([user_id: users[0].id, hobby_id: hobbies[3].id])
users_hobbies = UsersHobby.create([user_id: users[1].id, hobby_id: hobbies[0].id])
users_hobbies = UsersHobby.create([user_id: users[1].id, hobby_id: hobbies[1].id])
users_hobbies = UsersHobby.create([user_id: users[1].id, hobby_id: hobbies[5].id])
users_hobbies = UsersHobby.create([user_id: users[1].id, hobby_id: hobbies[6].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[7].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[9].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[3].id])
users_hobbies = UsersHobby.create([user_id: users[3].id, hobby_id: hobbies[12].id])
users_hobbies = UsersHobby.create([user_id: users[3].id, hobby_id: hobbies[11].id])
users_hobbies = UsersHobby.create([user_id: users[3].id, hobby_id: hobbies[10].id])
users_hobbies = UsersHobby.create([user_id: users[3].id, hobby_id: hobbies[2].id])

locations = Location.create([{name: 'München'},{name: 'Berlin'}, {name: 'Hamburg'}, {name: 'Köln'}, {name: 'Frankfurt am Main'}, {name: 'Stuttgart'}, {name: 'Düsseldorf'}, {name: 'Dortmund'}, {name: 'Essen'}, {name: 'Bremen'},{name: 'Leipzig'},{name: 'Dresden'},{name: 'Hannover'},{name: 'Nürnberg'},{name: 'Duisburg'},{name: 'Wuppertal'},{name: 'Bielefeld'},{name: 'Bochum'},{name: 'Bonn'},{name: 'Münster'},{name: 'Karlsruhe'},{name: 'Mannheim'},{name: 'Augsburg'}, ])

users_locations = UsersLocation.create([user_id: users[0].id, location_id: locations[0].id])
users_locations = UsersLocation.create([user_id: users[1].id, location_id: locations[0].id])
users_locations = UsersLocation.create([user_id: users[2].id, location_id: locations[0].id])
users_locations = UsersLocation.create([user_id: users[3].id, location_id: locations[0].id])
users_locations = UsersLocation.create([user_id: users[4].id, location_id: locations[0].id])
users_locations = UsersLocation.create([user_id: users[1].id, location_id: locations[3].id])
users_locations = UsersLocation.create([user_id: users[2].id, location_id: locations[6].id])
users_locations = UsersLocation.create([user_id: users[3].id, location_id: locations[7].id])
users_locations = UsersLocation.create([user_id: users[4].id, location_id: locations[12].id])

users_hobbies = UsersHobby.create([user_id: users[0].id, hobby_id: hobbies[0].id])

users_locations = UsersLocation.create([user_id: users[0].id, location_id: locations[0].id])

fussball1 = File.open('public/mqdefault.webp')
fussball2 = File.open('app/assets/images/events/fussball.jpg')
handball = File.open('app/assets/images/events/handball.jpg')
joggen = File.open('app/assets/images/events/joggen.jpg')
tanzen = File.open('app/assets/images/events/tanzen.gif')
reiten = File.open('app/assets/images/events/reiten.png')
skifahren = File.open('app/assets/images/events/skifahren.jpg')

events = Event.create([ { take_place_timestamp: DateTime.new(2001,2,3,4,5,6,'+7'), image: fussball2, title: 'Bolzen im eGarten', description: 'Hobby Kick', explicit_location: 'München, Maximilianstraße 1', max_participants: -1, location_id: locations[0].id, creator_id: users[0].id},
                        { take_place_timestamp: DateTime.new(2002,2,3,4,5,6,'+7'), image: fussball2, title: 'Bolzen2', description: 'Hobby Kick', explicit_location: 'München, Maximilianstraße 1', max_participants: -1, location_id: locations[0].id, creator_id: users[0].id},
                        { take_place_timestamp: DateTime.new(2003,2,3,4,5,6,'+7'), image: fussball2, title: 'Bolzen3', description: 'Hobby Kick', explicit_location: 'München, Maximilianstraße 1', max_participants: -1, location_id: locations[0].id, creator_id: users[0].id},
                        { take_place_timestamp: DateTime.new(2004,2,3,4,5,6,'+7'), image: handball, title: 'Handball', description: 'Handball Freizeit Treff', explicit_location: 'München, Maximilianstraße 1', max_participants: -1, location_id: locations[1].id, creator_id: users[0].id},
                        { take_place_timestamp: DateTime.new(2004,2,3,4,5,6,'+7'), image: handball, title: 'Handball', description: 'Handball Freizeit Treff', explicit_location: 'Berlin, Am Bergpfuhl 1', max_participants: -1, location_id: locations[12].id, creator_id: users[0].id},
						            { take_place_timestamp: DateTime.new(2005,2,3,4,5,6,'+7'), image: joggen, title: 'Joggen im Perlacher Forst', description: 'Wir gehen Samstag im Perlacher Forst joggen. Ca. 15km', explicit_location: 'Perlacher Forst an der grossen Eiche', max_participants: -1, location_id: locations[1].id, creator_id: users[0].id},
                        { take_place_timestamp: DateTime.new(2006,2,3,4,5,6,'+7'), image: tanzen, title: 'Tanzen', description: 'Lustiger Tanzball', explicit_location: 'Lothstraße 60', max_participants: 10, location_id: locations[0].id, creator_id: users[0].id},
                        { take_place_timestamp: DateTime.new(2007,2,3,4,5,6,'+7'), image: reiten, title: 'Reiten', description: 'Reiten um die Wette!', explicit_location: 'Trabrennbahn Riem', max_participants: 8, location_id: locations[0].id, creator_id: users[4].id},
                        { take_place_timestamp: DateTime.new(2008,2,3,4,5,6,'+7'), image: skifahren, title: 'Weihnachtsskifahren', description: 'Wir treffen uns am 24.12 an der Talstation im Nebelhorn. Um An- und Ab-reise muss sich jeder selbst kuemmern', explicit_location: 'Hochstraße 77', max_participants: -1, location_id: locations[0].id, creator_id: users[0].id}
]);

events_hobbies = EventsHobby.create([event_id: events[0].id, hobby_id: hobbies[0].id ])
events_hobbies = EventsHobby.create([event_id: events[1].id, hobby_id: hobbies[0].id ])
events_hobbies = EventsHobby.create([event_id: events[2].id, hobby_id: hobbies[0].id ])
events_hobbies = EventsHobby.create([event_id: events[3].id, hobby_id: hobbies[1].id ])
events_hobbies = EventsHobby.create([event_id: events[4].id, hobby_id: hobbies[2].id ])
events_hobbies = EventsHobby.create([event_id: events[5].id, hobby_id: hobbies[3].id ])
events_hobbies = EventsHobby.create([event_id: events[6].id, hobby_id: hobbies[5].id ])
events_hobbies = EventsHobby.create([event_id: events[7].id, hobby_id: hobbies[6].id ])

users_events = UsersEvent.create([user_id: users[0].id, event_id: events[0].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[1].id, event_id: events[0].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[2].id, event_id: events[0].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[0].id, event_id: events[1].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[3].id, event_id: events[1].id, date_of_entry: '2015-06-14 12:22:00'])

comments = Comment.create([user_id: users[1].id, message: 'Großartige Veranstalung! Freu mich!', event_id: 1])
comments = Comment.create([user_id: users[1].id, message: 'Bin auch dabei!', event_id: 1])
