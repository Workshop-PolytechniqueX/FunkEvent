# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Place.create(
    id: 1,
    name: "New Morning",
    description: "Concerts eclectiques de jazz, reggae, rock et musique cubaine dans un lieu legendaire, simple et intimiste.",
    capacity: 50,
    url_place: "newmorning.com",
    adress: "10 Rue des Petites Ecuries, 75010 Paris",
    latitude: 48.873005,
    longitude: 2.353232
)

Image.create(
    image_link_type: "place",
    image_link_id: 1,
    url_image: "https://storage.googleapis.com/static.panoramio.com/photos/medium/89323.jpg"
)

Place.create(
    id: 2,
    name: "Le Comedy Club",
    description: "Un bar-lounge et une scene accueillant de jeunes talents pour des spectacles d'humour et des jam sessions.",
    capacity: 200,
    url_place: "lecomedyclub.com",
    adress: "42 Boulevard de Bonne Nouvelle, 75010 Paris",
    latitude: 48.870725,
    longitude: 2.348469
)

Image.create(
    image_link_type: "place",
    image_link_id: 2,
    url_image: "https://lh3.googleusercontent.com/-3gcYND-hSyw/UbG1_-MTEVI/AAAAAAAAJKk/gogAp46-GmU/s455-k-no/"
)

Performer.create(
    id: 1,
    name: "Abraxxas",
    performer_category: "Musician",
    genre: "Rock",
    description: "Abraxas est un groupe de ProtoDancepop/Newwave Parisien. http://www.deezer.com/album/9722016
    'C est le meilleur groupe qui soit' a déclaré quelqu un.",
    url_performer: "https://www.facebook.com/abraxasofficial"
)

Image.create(
         image_link_type: "performer",
         image_link_id: 1,
         url_image: "https://scontent-cdg2-1.xx.fbcdn.net/hphotos-ash2/v/l/t1.0-9/10414886_611325479000879_2453807591642275189_n.jpg?oh=dbf3069ee3bef259ffef2c5d03eafb06&oe=56E022C2"
)

Event.create(
   id: 1,
   name: "Soiree Rock de folie au New Morning",
   place_id: 1,
   performer_id: 1,
   description: "Le jeune groupe de rock etudiant Abraxas va venir enflammer la scene pour une soiree qui va surement rester dans les annales!",
   date: DateTime.new(2015, 12, 3),
   price: 5
)

Place.create(
    id: 3,
    name: "Le PomPom",
    description: "Bar-club branche du 10eme",
    capacity: 100,
    url_place: "http://www.planeteparis.fr/Bar-Le-pompon.html",
    latitude: 48.873815,
    longitude: 2.350067
)

Place.create(
    id: 4,
    name: "Le Cinquante",
    description: "Petit bar dans un esprit annees 1950",
    capacity: 100,
    url_place: "https://www.facebook.com/Le-Cinquante-195059667184887/",
    latitude: 48.871865,
    longitude: 2.362469
)

Place.create(
    id: 5,
    name: "James Hetfeeld's Pub",
    description: "Pub irlandais à l'ambiance festive",
    capacity: 100,
    url_place: "https://www.facebook.com/JamesHetfeeldsPub",
    latitude: 48.870864,
    longitude: 2.345522
)

Image.create(
    image_link_type: "place",
image_link_id: 3,
    url_image: "http://static1.villaschweppes.com/articles/4/73/4/@/2477-le-bar-du-pompon-1230x680-1.jpg"

)

Image.create(
    image_link_type: "place",
image_link_id: 4,
    url_image: "http://s3-media1.fl.yelpcdn.com/bphoto/MQ7FBY8HOhQ3iqGOA-ptyQ/o.jpg"

)

Image.create(
    image_link_type: "place",
image_link_id: 5,
    url_image: "http://www.lesgrandsboulevards.fr/img/enseignes/WEB_029711-05-13.jpg"

)