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

fiona = User.create(email: "fiona@mail.me", password: "azerty")
gabriel = User.create(email: "gabriel@mail.me", password: "azerty")
clement = User.create(email: "clement@mail.me", password: "azerty")

steinway = Brand.new(
  name: "Steinway",
  description: "Steinway & Sons crée depuis toujours des précédents historiques dans la fabrication de pianos à queue et pianos droits répondant aux exigences de qualité les plus poussées. Avec le développement de plus de 128 brevets, l'entreprise est considérée comme le fondateur de la construction de pianos moderne. Chaque piano à queue Steinway est une pièce unique fabriquée à la main à partir des meilleurs matériaux.")

roland = Brand.new(
  name: "Roland",
  description: "Du son au clavier en passant par le meuble de piano droit abritant un ensemble remarquable de huit haut-parleurs pour un système de son multicanal, le Roland est un piano conçu pour les connaisseurs. Doté d'un design majestueux, brillant tel un miroir, ce magnifique instrument vous permet de profiter à domicile de la beauté d'un piano à queue de haute qualité.")

petrof = Brand.new(
  name: "Petrof",
  description: "Le premier piano de l'entreprise Petrof a été construit en 1864 à Hradec Králové, en République tchèque. C'est en 1894 que l'entreprise, d'abord orientée sur le marché local, s'ouvre à l'exportation. Une filiale est du reste ouverte l'année suivante à Temesvar, en Hongrie. En 1928, une filiale est ouverte à Londres, en collaboration avec le prestigieux facteur Steinway & sons.")


piano01 = Piano.new(
  title: "Steinway",
  description: "Piano d'anthologie en bois verni",
  category: "Piano a queue",
  address: "156 Bld Saint Germain 75006 Paris",
  brand: steinway,
  price: 50)
piano01.user = User.first
piano01.save

piano02 = Piano.new(
  title: "Petrof",
  description: "Piano de competition",
  category: "Piano droit",
  address: "26 Bld Raspail 75007 Paris",
  brand: petrof,
  price: 30)
piano02.user = User.first
piano02.save

piano03 = Piano.new(
  title: "Roland",
  description: "Clavier midi pour live",
  category: "Synthé",
  address: "12 Rue de Paris 75010 Paris",
  brand: roland,
  price: 20)
piano03.user = User.last
piano03.save

