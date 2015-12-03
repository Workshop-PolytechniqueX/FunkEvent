# ruby encoding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Event.create(
    id: 2,
    name: "Soiree old school au cinquante",
    place_id: 4,
    performer_id: 3,
    description: "Prigal va venir enflammer le bar le cinquante avec son rock endiable pour une soiree qui devrait durer tard dans la nuit!",
    date: DateTime.new(2015, 12, 3),
    price: 2
)

Event.create(
    id: 3,
    name: "Hip hop et stand up au Comedy Club",
    place_id: 2,
    performer_id: 2,
    description: "Soiree exceptionnelle ce jeudi au Comedy Club avec la venue du trio Sax Machin qui vont faire le show accompagnes par d'autres artistes
   surprises mais egalement de nombreux stand up amateurs !",
    date: DateTime.new(2015, 12, 3),
    price: 5
)

Event.create(
    id: 4,
    name: "Joute d'Improvisation au Comedy Club",
    place_id: 2,
    performer_id: 2,
    description: "Au Comedy Club, place à l'improvisation ce vendredi pour une soirée qui s'annonce folle ! Sax Machine nous offrira un autre de ses talents
    à l'occasion de cette soirée-retour parce qu'il nous aime bien.",
    date: DateTime.new(2015, 12, 4),
    price: 4
)

Event.create(
    id: 5,
    name: "As the Rolling Stones would rock",
    place_id: 1,
    performer_id: 5,
    description: "Concert gratuit, les Stones arriveront probablement ivres sur scène pour se rappeler le bon temps de leur début.
    Réservation obligatoire, on vous conseille de prendre vos places illico-presto !",
    date: DateTime.new(2015, 12, 5),
    price: 0
)

Event.create(
    id: 6,
    name: "Welcome to our Garage",
    place_id: 1,
    performer_id: 6,
    description: "Vous connaissez notre petit salle cosy proprette. Ce samedi on met tout par terre avec le groupe Garage Band, qui
    nous prépare sa pop dévastatrice et va faire chauffer les lampes de leurs amplis.",
    date: DateTime.new(2015, 12, 5),
    price: 7
)

Event.create(
    id: 8,
    name: "Celtic's secrets",
    place_id: 3,
    performer_id: 7,
    description: "Ce soir notre pub se fait creuset de cultures ancestrales et alternatives pour accueillir les brilliants mais non
    pas moins farfelus Lutins Celtiques. Après le traditionnel lancer de Lutins se tiendra une descente d'arc-en-ciel.",
    date: DateTime.new(2015, 12, 7),
    price: 5
)

Event.create(
    id: 9,
    name: "Celtic Cuisine",
    place_id: 5,
    performer_id: 7,
    description: "Cours de cuisine celtique tout en magie assuré par les fantastiques Lutins Celtiques.",
    date: DateTime.new(2015, 12, 9),
    price: 6
)

Event.create(
    id: 10,
    name: "Guitars & Mechanics",
    place_id: 3,
    performer_id: 6,
    description: "Guitares larsen & clé de 12 pour un pot les mains dans le cambouis dans une ambiance mixte.",
    date: DateTime.new(2015, 12, 11),
    price: 2
)

Event.create(
    id: 11,
    name: "Stony 50s",
    place_id: 4,
    performer_id: 5,
    description: "Les Stones veulent se souvenir de leurs jeunes années de cinquantenaires maintenant qu'ils sont des vieux tas de rock. Peu de places, tarif VIP",
    date: DateTime.new(2015, 12, 2),
    price: 200
)

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
    name: "Abraxas",
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
    longitude: 2.350067,
    adress: "39 Rue des Petites Écuries, 75010 Paris"
)

Place.create(
    id: 4,
    name: "Le Cinquante",
    description: "Petit bar dans un esprit annees 1950",
    capacity: 100,
    url_place: "https://www.facebook.com/Le-Cinquante-195059667184887/",
    latitude: 48.871865,
    longitude: 2.362469,
    adress: "50 Rue de Lancry, 75010 Paris"
)

Place.create(
    id: 5,
    name: "James Hetfeeld's Pub",
    description: "Pub irlandais à l'ambiance festive",
    capacity: 100,
    url_place: "https://www.facebook.com/JamesHetfeeldsPub",
    latitude: 48.870864,
    longitude: 2.345522,
    adress: "	17 Boulevard Poissonnière, 75002 Paris"
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

Like.create(
    user_id: 1,
    like_link_type: "place",
    like_link_id: 1
)


Like.create(
    user_id: 1,
    like_link_type: "place",
    like_link_id: 2
)


Like.create(
    user_id: 2,
    like_link_type: "performer",
    like_link_id: 1
)

User.create(
    first_name: "Barack",
    last_name: "Obama",
    email: "barack@obama.com",
    password: "barackobama"
)

Performer.create(
    id: 2,
    name: "Sax Machine",
    performer_category: "Musician",
    genre: "Pop",
    description: "Trio Jazz Hip-hop,
    Sax Machine est un retour vers le futur de la « Great Black Music » : Hard-Bop, Afro-Beat,
    Funk ou Hip-Hop viennent se collisionner pour former un alliage inédit et imparable !.",
    url_performer: "http://www.saxmachine.biz/"
)


Performer.create(
    id: 3,
    name: "Prigal",
    performer_category: "Musician",
    genre: "Soul",
    description: "Un grain de voix incomparable , une guitare qui nous transporte , des titres sensuels , bluesy et ... C'est l'effet PRIGAL",
    url_performer: "http://www.patrigal.com/"
)


Performer.create(
    id: 4,
    name: "PHONOCLUB",
    performer_category: "Musician",
    genre: "Rock",
    description: "PHONOCLUB est un groupe de rock independant originaire de Rennes, Bretagne (France).
Influencé de plusieurs mouvements rock des années 80 et 90, entre le post punk, le post rock et la pop,
PHONOCLUB fait vivre par ses quatre membres une musique originale et singulière. Soutenu par une puissante base rythmique,
servit par une voix profonde aux textes intimes et socialement provocateur, PHONOCLUB développe des mélodies aériennes accompagnées
de riffs acérés pouvant nous rappeler une certaine époque psychédélique.",
    url_performer: "https://phonoclub.bandcamp.com/"
)

Performer.create(
    id: 5,
    name: "Rolling Stones",
    performer_category: "Musician",
    genre: "Rock",
    description: "Les Rolling Stones sont un petit groupe champêtre émergent d'heptagénaires endiablés.
    Ils se prétendent les héritiers du Grand et Vrai Rock'n'Roll, et refusent de répondre lorsqu'on leur demandent s'ils s'inspirents des Beatles",
    url_performer: "http://www.rollingstones.com/"
)

Performer.create(
    id: 6,
    name: "Garage Band",
    performer_category: "Musician",
    genre: "Pop",
    description: "De la pop un peu mélo mais qui ferait pleurer même les propriétaires de Hummer",
    url_performer: "http://www.apple.com/fr/ios/garageband/"
)

Performer.create(
    id: 7,
    name: "Les Lutins Celtiques",
    performer_category: "Magician",
    genre: "",
    description: "Les Lutins Celtiques élaborent leurs tours de magie à partir des mythes d'Irlande profonde. Leur performance la plus remarquable fut
    l'apparition d'un chaudron plein d'oseille au pied d'un arc-en-ciel",
    url_performer: "http://www.escapadesceltiques.com/"
)


Image.create(
    image_link_type: "performer",
    image_link_id: 2,
    url_image: "http://www.saxmachine.biz/wp-content/uploads/2010/11/Sax-Machine-feat.-RacecaR-5-520-520x346.jpg"
)


Image.create(
    image_link_type: "performer",
    image_link_id: 3,
    url_image: "http://www.francodiff.org/nobody/artiste/000044/004433/photo_2.jpg"
)

Image.create(
    image_link_type: "performer",
    image_link_id: 4,
    url_image: "http://4.bp.blogspot.com/-qNgehS0ixVQ/Ve3_jEts4QI/AAAAAAAAAyM/1PZn8Vp4SaI/s1600-r/Phonoclub.jpg"
)