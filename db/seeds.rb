# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Piano.destroy_all

fiona = User.create(email: "fiona@mail.me", password: "azerty")
jules = User.create(email: "jules@mail.me", password: "azerty")
clement = User.create(email: "clement@mail.me", password: "azerty")

piano01 = Piano.new(
  title: "Steinway",
  description: "Piano d'anthologie en bois verni",
  category: "Piano a queue",
  address: "156 Bld Saint Germain 75006 Paris",
  price: 50)
piano01.user = User.first
piano01.save

piano02 = Piano.new(
  title: "Petrof",
  description: "Piano de competition",
  category: "Piano droit",
  address: "26 Bld Raspail 75007 Paris",
  price: 30)
piano02.user = User.first
piano02.save


piano03 = Piano.new(
  title: "Roland",
  description: "Clavier midi pour live",
  category: "Synthé",
  address: "12 Rue de Paris 75010 Paris",
  price: 20)
piano03.user = User.last
piano03.save

