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
markus = File.open('app/assets/images/profiles/markus.jpg')


users = User.create!([
{firstname: 'Max', lastname:'Mustermann', image: default, :email => "test@test.de", :password => "test1234", :password_confirmation => "test1234" },
{firstname: 'Andi', lastname:'Maier',image: andi, :email => "Andreas.Maier@hobbyisten.de", :password => "testtest", :password_confirmation => "testtest" },
{firstname: 'Markus', lastname:'Schöllner',image: markus, :email => "Markus.Schoellner@hobbyisten.de", :password => "test1234", :password_confirmation => "test1234" },
{firstname: 'Andreas', lastname:'Hilmer',image: default, :email => "Andreas.Hilmer@hobbyisten.de", :password => "test1234", :password_confirmation => "test1234" },
{firstname: 'Thomas', lastname:'Hantschel',image: default, :email => "Thomas.Hantschel@hobbyisten.de", :password => "test1234", :password_confirmation => "test1234" }
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
                         {name: 'Snowboarden', description: 'Auf einem Brett an den Füßen einen schneebedeckten Berg abfahren'},
						 {name: 'Modelleisenbahn', description: 'Modelleisenbahnen aufbauen und Tips und Tricks austauschen'},
						 {name: 'Paintball', description: 'Ein Teamsport bei dem zwei Teams versuchen die gegnerischen Spieler mit Farbpatronen zu erwischen'}
						 ])

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
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[7].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[13].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[4].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[8].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[10].id])
users_hobbies = UsersHobby.create([user_id: users[2].id, hobby_id: hobbies[11].id])
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

fussball2 = File.open('app/assets/images/events/1.jpg')
handball = File.open('app/assets/images/events/2.jpg')
joggen = File.open('app/assets/images/events/3.jpg')
tanzen = File.open('app/assets/images/events/4.jpg')
reiten = File.open('app/assets/images/events/6.jpg')
skifahren = File.open('app/assets/images/events/7.jpg')
paintball = File.open('app/assets/images/events/14.jpg')
modellbahn = File.open('app/assets/images/events/13.jpg')
angeln = File.open('app/assets/images/events/8.jpg')
jagen = File.open('app/assets/images/events/10.jpg')
mountainbike = File.open('app/assets/images/events/5.jpg')
segeln = File.open('app/assets/images/events/9.jpg')
surfen = File.open('app/assets/images/events/11.jpg')
snowboarden = File.open('app/assets/images/events/12.jpg')

events = Event.create([ { take_place_timestamp: DateTime.new(2015,7,9,18,0,0,'+0'), image: fussball2, title: 'Spontan Kicken mit dem Hobbyisten-Team', description: 'Das Wetter ist gut, die Leute motiviert! Los geht es um 18:00 am im Forstenriederpark. Sportklamotten am besten schon anhaben, es gibt vor Ort keine Umkleiden sowie Duschen. Jeder ist willkommen!', explicit_location: 'München, Forstenrieder Park 1', max_participants: -1, location_id: locations[0].id, creator_id: users[1].id, hobby_id: hobbies[0].id},
                        { take_place_timestamp: DateTime.new(2015,7,1,19,15,0,'+0'), image: fussball2, title: 'Hallenfußball am Mittwoch (01.07) in der Soccerworld', description: 'Solides Freizeitkicker-Niveau, der Spaß am Kicken steht im Mittelpunkt. Treffpunkt ist um 19.15 Uhr, Anstoß um 19.30 Uhr (Spielzeit: 90 Minuten). Es können max. 12 Mitspieler teilnehmen, Kosten sind 10 EUR pro Spieler. Bitte pünktlich sein und nur zusagen, wer verbindlich dabei ist! Treffpunkt ist in der Halle am hintersten Court.', explicit_location: 'München, Georg-Kainz-Straße 8', max_participants: 12, location_id: locations[0].id, creator_id: users[0].id, hobby_id: hobbies[0].id},
                        { take_place_timestamp: DateTime.new(2015,7,3,17,30,0,'+0'), image: fussball2, title: 'Hallenfußball für geübte Spieler', description: 'Für "Positiv Fußball Verrückte" Spieler zwischen 20-35 Jahre! Gespielt wird 5 gegen 5 mit je einem Auswechselspieler. Insgesamt nehmen also maximal 12 Personen teil! Bitte nur Leute melden, die im Verein spielen oder regelmäßig Fußball spielen. Spieler, die wegen Arbeit/Studium etc. kürzer treten müssen aber gut im Saft stehen und das Zeug haben, sind natürlich auch herzlich willkommen. Wir wollen nicht bolzen sondern ein gutes Niveau an den Tag legen.', explicit_location: 'München, Georg-Kainz-Straße 8', max_participants: 12, location_id: locations[0].id, creator_id: users[0].id, hobby_id: hobbies[0].id},
                        { take_place_timestamp: DateTime.new(2015,7,3,14,30,0,'+0'), image: handball, title: 'Handball für Anfänger', description: 'Wir treffen uns um 14:30 und haben den Platz bis 16:00 reserviert. Teilnehmer sind grundsätzlich erstmal alle willkommen wenn der Ansturm zu groß wird wechseln wir die Teams durch.', explicit_location: 'München, Maximilianstraße 1', max_participants: -1, location_id: locations[1].id, creator_id: users[0].id, hobby_id: hobbies[1].id},
                        { take_place_timestamp: DateTime.new(2015,7,3,13,0,0,'+0'), image: handball, title: 'Handballtreff', description: 'Wir veranstalten ein kleines Turnier, mit 6 Teams. Bitte pünktlich um 13:00 vor Ort sein! Das erste Spiel beginnt dann um 13:30', explicit_location: 'München, Am Bergpfuhl 1', max_participants: 42, location_id: locations[12].id, creator_id: users[0].id, hobby_id: hobbies[1].id},
						{ take_place_timestamp: DateTime.new(2015,7,3,18,15,0,'+0'), image: joggen, title: 'Joggen im Perlacher Forst', description: 'Wir gehen Samstag im Perlacher Forst joggen. Ca. 15km. Treffpunkt ist um 18:15', explicit_location: 'München, Perlacher Forst', max_participants: -1, location_id: locations[1].id, creator_id: users[0].id, hobby_id: hobbies[2].id},
                        { take_place_timestamp: DateTime.new(2015,7,3,19,30,0,'+0'), image: tanzen, title: 'Tanzen im Tanzbar-Zelt auf dem Tollwood', description: 'Dieses Jahr gibt es wieder das Tanzbar-Zelt auf dem Tollwood im Olympiapark - Donnerstags wird von 19:30-21 Uhr Salsa getanzt!', explicit_location: 'München, Olympiapark', max_participants: 10, location_id: locations[0].id, creator_id: users[0].id, hobby_id: hobbies[3].id},
						{ take_place_timestamp: DateTime.new(2015,7,3,16,0,0,'+0'), image: tanzen, title: 'Tanzen auf dem Kocherlball', description: 'Wer von Euch hat alles lust mit auf den Kocherlball am Chinesischen Turm zu gehen? Der Kocherlball kommt aus dem 19. Jahrhundert, bei dem sich Hausangestellte in aller früh zum Tanzen verabredet haben. Heute zählt der Kocherlball zu den bestbesuchtesten Volkstanzveranstaltungen in München, bei dem jedes Jahr bis zu 10.000 Leute in aller früh hinströmen. Die Veranstaltung geht von 6 - 10 Uhr in der früh. Tracht ist erwünscht aber nicht erforderlich man kann auch eigene Speißen mitbringen. Als Treffpunkt würde ich die U-Bahnhaltestelle "Universität" um 3:00 Uhr vorschlagen. Von dort aus kann man gemeinsam zum Englischen Garten pilgern.', explicit_location: 'München, Chinesischer Turm, Englischer Garten', max_participants: -1, location_id: locations[0].id, creator_id: users[0].id, hobby_id: hobbies[3].id},
                        { take_place_timestamp: DateTime.new(2015,7,3,9,0,0,'+0'), image: reiten, title: 'Reiten', description: 'Ich konnte mir die Trabrennbahn von 09:00-11:00 sichern. Wer gemütlich ein bisschen über die Trabrennbahn galoppieren möchte und sich über sein Pferd austauschen möchte darf sich mir anschließen.', explicit_location: 'München, Trabrennbahn Riem', max_participants: 8, location_id: locations[0].id, creator_id: users[4].id, hobby_id: hobbies[5].id},
                        { take_place_timestamp: DateTime.new(2015,12,24,5,30,0,'+0'), image: skifahren, title: 'Weihnachtsskifahren', description: 'Wir fahren am 24.12 zum Nebelhorn und wollen dort gemütlich den Weihnachtstag beginnen. Abfahrt ist um 05:30 an der Hochstraße 77. In unserem VW-Bus können wir insgesamt 5 Personen mit Ski/Snowboard unterbringen. Die Spritkosten werden anschließend auf alle aufgeteilt.', explicit_location: 'München, Hochstraße 77', max_participants: 5, location_id: locations[0].id, creator_id: users[0].id, hobby_id: hobbies[6].id},
						{ take_place_timestamp: DateTime.new(2015,8,8,15,45,0,'+0'), image: paintball, title: 'Paintball Runde im Münchner Norden', description: 'Hallo, ich suche noch Mitstreiter für ein Paintball Match. Wir spielen 5 gegen 5. Der Eintritt beläuft sich auf 12€ pro Person und los geht das Ganze ab 15:45 für 1Std.', explicit_location: 'München, Robert-Bosch-Straße 12', max_participants: 10, location_id: locations[0].id, creator_id: users[2].id, hobby_id: hobbies[13].id},
						{ take_place_timestamp: DateTime.new(2015,8,4,10,0,0,'+0'), image: modellbahn, title: 'Modelleisenbahn Treff - Gleis 11', description: 'Servus! Wir, der Gleis 11 e.V. veranstalten in unserem Shop am Hauptbahnhof für alle Interessierten in unserem Shop am Hauptbahnhof einen Treff. Für groß und klein ist viel geboten! Los geht es am Samstag um 10:00', explicit_location: 'München, Hauptbahnhof am Gleis 11', max_participants: -1, location_id: locations[0].id, creator_id: users[3].id, hobby_id: hobbies[12].id},
						{ take_place_timestamp: DateTime.new(2015,8,5,5,0,0,'+0'), image: angeln, title: 'Angeln am Stiefelsee', description: 'Grüß Gott, ich fahre am Sonntag zum Stiefelsee angeln. Abfahrt ist um 5:00 (bitte pünktlich sein) an der U-Bahn Station Poccistraße. In meinem Auto kann ich noch 2 Angler und Equiptment transportieren. Viele Grüße, Markus!', explicit_location: 'München, Lindwurmstraße 157', max_participants: 3, location_id: locations[0].id, creator_id: users[2].id, hobby_id: hobbies[7].id},
						{ take_place_timestamp: DateTime.new(2015,8,25,10,0,0,'+0'), image: mountainbike, title: 'Mountainbike Tour zur Brunnihütte ', description: 'Coole MountainbikeTour zur Brunnihütte in Engelberg.  Auf der Abfahrt gäbe es eine Variante nach Wolfenschiessen runter. Ich fahre so gegen 10 ab Luzern los, wer möchte kann sich mir dort schon anschließen. Eine Person kann ich noch von München aus mitnehmen in meinem Auto.', explicit_location: 'München, Isartor', max_participants: -1, location_id: locations[0].id, creator_id: users[2].id, hobby_id: hobbies[4].id},
						{ take_place_timestamp: DateTime.new(2015,8,25,10,0,0,'+0'), image: segeln, title: 'Segeln auf dem Ammersee', description: 'Am Samstag ist sowohl Wind als auch warmes Wetter vorhergesagt. Wer kommt mit zum Segeln? Bis max. 7 Teilnehmer würde ich bei der Segelschule in Dießen ein Kajütboot Nomade reservieren (http://www.ammersee-segelschule.de/ammersee-segelschule-segeln-segelboot-verleih ), ansonsten den Flying Cruiser bis 4 Personen. Beide Boote sind relativ gutmütig, daher dürft ihr gerne Anfänger im Segeln sein. Ich fahre mit dem Auto und kann außer mir 4 Personen mitnehmen. 10 Uhr wäre der Treffpunkt am Canditplatz für alle, die aus München mitfahren wollen, sonst nach Absprache. Die Segelschule ist direkt neben dem Bahnhof in Dießen und auch mit dem Zug gut erreichbar. Den Mietpreis für das Boot teilen wir und wird je nach Anzahl Teilnehmer zwischen 10 und 16 Euro liegen. Wir sind ca. 4 Stunden mit dem Boot unterwegs und ca. um 16 Uhr wieder zurück in München. Nehmt Badesachen mit und Verpflegung für Unterwegs.', explicit_location: 'München, Candidplatz', max_participants: 8, location_id: locations[0].id, creator_id: users[2].id, hobby_id: hobbies[8].id},
						{ take_place_timestamp: DateTime.new(2015,7,9,8,0,0,'+0'), image: surfen, title: 'Surfen in Holland', description: 'Aloha-he an alle Wellenreiter! Also, eine Freundin und ich haben nun gebucht: 09. bis 12. Juli Scheveningen in Holland. Machen dort einen 3 Tage Surfkurs :) also Anfänger können gern auch mitkommen! Es sind noch Plätze frei. Eine/n kann ich noch von München aus mitnehmen.', explicit_location: 'München, S-Bahn Laim', max_participants: -1, location_id: locations[0].id, creator_id: users[2].id, hobby_id: hobbies[10].id},
						{ take_place_timestamp: DateTime.new(2015,7,9,8,0,0,'+0'), image: jagen, title: 'Jagen im Kollbacher Wald', description: 'Halli Hallo. Ich werde beim nächsten Vollmond im Wald zwischen Kollbach und Weißlang und Wildjagt gehen. Jeder der sich anschließen möchte ist gerne eingeladen mitzukommen. Ich hoffe wir erjagen uns ein bisschen was zum essen :', explicit_location: 'Kollbach', max_participants: -1, location_id: locations[0].id, creator_id: users[1].id, hobby_id: hobbies[10].id},
						{ take_place_timestamp: DateTime.new(2015,7,9,8,0,0,'+0'), image: snowboarden, title: 'Snowboarden aufm Hintertuxer Gletscher', description: 'Nach meinem ersten Aufenthalt im österreichischen Tux letzte Woche bin ich begeistert und würde es gerne wiederholen, diesmal mit einer weiblichen Begleitung. In Tux kann man gleichzeitig zwei Jahreszeiten genießen, im Tal den Sommer und auf dem Gletscher skifahren oder snowboarden... einfach herrlich. Ich wollte Samstag früh los und Sonntag Abend zurück. Um die Anreise muss sich jeder selbst kümmern. Liebe Grüße', explicit_location: 'München, Nymphenburger Str. 137', max_participants: 3, location_id: locations[0].id, creator_id: users[2].id, hobby_id: hobbies[11].id}
]);

# Hinf?llig. Events haben jetzt eine extra spalte f?r hobby_id
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
users_events = UsersEvent.create([user_id: users[2].id, event_id: events[10].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[0].id, event_id: events[10].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[1].id, event_id: events[10].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[3].id, event_id: events[10].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[2].id, event_id: events[11].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[0].id, event_id: events[11].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[1].id, event_id: events[11].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[3].id, event_id: events[11].id, date_of_entry: '2015-06-14 12:22:00'])
users_events = UsersEvent.create([user_id: users[2].id, event_id: events[12].id, date_of_entry: '2015-06-14 12:22:00'])

comments = Comment.create([user_id: users[1].id, message: 'Großartige Veranstalung! Freu mich!', event_id: 1])
comments = Comment.create([user_id: users[0].id, message: 'Bin auch dabei!', event_id: 1])
