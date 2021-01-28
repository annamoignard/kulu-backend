# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Sessions = session.create([{name: 'Vinyasa Flow'}, { name: 'Power Flow' }, {name: 'Restorative Flow'}])
Client.create( name: 'Nicole', session: sessions.first)

if User.count == 0
  User.create(username: "Anna", email:"anna@test.com", password: "password1", password_confirmation: "password1")
  User.create(username: "Anna2", email:"anna2@test.com", password: "password2", password_confirmation: "password2")


  
