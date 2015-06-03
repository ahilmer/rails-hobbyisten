# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create!([{firstname: 'Andi', lastname:'Maier', :email => "test@test.de", :password => "test1234", :password_confirmation => "test1234" }])

hobbies = Hobby.create([ {name: 'Fußball', description: 'ein Ballspiel für zwei Mannschaften, bei dem die Spieler den Ball nur mit dem Fuß (und mit dem Kopf), aber nicht mit der Hand berühren dürfen und bei dem es darum geht, möglichst viele Tore zu schießen'},
                         {name: 'Handball', description: 'eine Ballsportart für zwei Mannschaften, bei der die Spieler den Ball mit den Händen werfen und versuchen, ihn ins gegnerische Tor zu spielen.'}
                       ])

locations = Location.create([{name: 'München'},{name: 'Berlin'}, {name: 'Hamburg'}]);

events = Event.create([{ title: 'Bolzen', description: 'Hobby Kick', explicit_location: 'Maximilianstraße 1', max_participants: -1, location_id: locations[0].id, creator_id: users[0].id}]);
