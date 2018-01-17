# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Owner.create(name: "matz")
  Owner.create(name: "fathi")
  Owner.create(name: "nat")
  Owner.create(name: "wally")

  owners = Owner.all
  owners.each do |owner|
    owner.articles.create(name: Faker::Book.title, price: "RM#{Faker::Commerce.price}", description: Faker::Book.publisher)
  end

