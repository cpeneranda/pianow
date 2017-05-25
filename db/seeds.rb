# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Booking.destroy_all
Piano.destroy_all
Brand.destroy_all
User.destroy_all


# # CATEGORY

# piano_a_queue = Piano.new(
#   category: "Piano à queue")

# piano_droit = Piano.new(
#   category: "Piano droit")

# synthetiseur = Piano.new(
#   category: "Synthetiseur")

# clavinova = Piano.new(
#   category: "Clavinova")


# USERS

brigitte = User.create(
  first_name: "Brigitte",
  last_name: "Trogneux",
  email: "brigitte@mail.me",
  password: "azerty")

julie = User.create(
  first_name: "Julie",
  last_name: "Gayet",
  email: "julie@mail.me",
  password: "azerty")

carla = User.create(
  first_name: "Carla",
  last_name: "Bruni",
  email: "carla@mail.me",
  password: "azerty")

# BRANDS

steinway = Brand.new(
  name: "Steinway",
  description: "Steinway & Sons crée depuis toujours des précédents historiques dans la fabrication de pianos à queue et pianos droits répondant aux exigences de qualité les plus poussées. Avec le développement de plus de 128 brevets, l'entreprise est considérée comme le fondateur de la construction de pianos moderne. Chaque piano à queue Steinway est une pièce unique fabriquée à la main à partir des meilleurs matériaux.")

roland = Brand.new(
  name: "Roland",
  description: "Du son au clavier en passant par le meuble de piano droit abritant un ensemble remarquable de huit haut-parleurs pour un système de son multicanal, le Roland est un piano conçu pour les connaisseurs. Doté d'un design majestueux, brillant tel un miroir, ce magnifique instrument vous permet de profiter à domicile de la beauté d'un piano à queue de haute qualité.")

petrof = Brand.new(
  name: "Petrof",
  description: "Le premier piano de l'entreprise Petrof a été construit en 1864 à Hradec Králové, en République tchèque. C'est en 1894 que l'entreprise, d'abord orientée sur le marché local, s'ouvre à l'exportation. Une filiale est du reste ouverte l'année suivante à Temesvar, en Hongrie. En 1928, une filiale est ouverte à Londres, en collaboration avec le prestigieux facteur Steinway & sons.")

# PIANOS

piano01 = Piano.new(
  title: "Steinway",
  description: "Piano d'anthologie en bois verni",
  category: "Piano a queue",
  address: "156 Bld Saint Germain 75006 Paris",
  brand: steinway,
  price: 50)
piano01.user = brigitte
piano01.save

piano02 = Piano.new(
  title: "Petrof",
  description: "Piano de competition",
  category: "Piano droit",
  address: "26 Bld Raspail 75007 Paris",
  brand: petrof,
  price: 30)
piano02.user = julie
piano02.save

piano03 = Piano.new(
  title: "Roland",
  description: "Clavier midi pour live",
  category: "Synthé",
  address: "12 Rue de Paris 75010 Paris",
  brand: roland,
  price: 20)
piano03.user = carla
piano03.save


