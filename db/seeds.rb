# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.destroy_all

Cat.create(name: "fluffy", email: "s@r.pl", birthday: "12-04-2001", password: "1234", password_confirmation: "1234")
Cat.create(name: "nnn", email: "f@r.pl", birthday: "03-03-2003", password: "2345", password_confirmation: "2345")

