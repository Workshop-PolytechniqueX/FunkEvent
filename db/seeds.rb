# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Place.create(
    name: "Salle Pleyel",
    description: "Concert blabla",
    capacity: 500,
    website: "http://www.sallepleyel.fr/img/visuel/diaporama/salle_concert_scene.jpg",
    latitude: 48.8771744,
    longitude: 2.3013612
)

Place.create(
    name: "Nouveau Casino",
    description: "L'Aventura",
    capacity: 500,
    website: "http://www.gqmagazine.fr/uploads/images/201421/cc/l_aventura_de_s__bastien_tellier_7651.jpeg",
    latitude: 48.8658748,
    longitude: 2.3757088
)