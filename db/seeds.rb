# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Sessions = session.create([{name: 'Vinyasa Flow'}, { name: 'Power Flow' }, {name: 'Restorative Flow'}])
# Client.create( name: 'Nicole', session: sessions.first)

# if User.count == 0
#   User.create(username: "Anna", email:"anna@test.com", password: "password1", password_confirmation: "password1")
#   User.create(username: "Anna2", email:"anna2@test.com", password: "password2", password_confirmation: "password2")


#  create variable name and then do the below for multiple instrucotors 

user_one =  User.create(username: "Indigo", email:"indigo@test.com", password: "password", password_confirmation: "password")

instructor = Instructor.create(user_id: user_one.id, name: "Indigo Love")


user_two =  User.create(username: "Ziggy Love", email:"ziggy@test.com", password: "password", password_confirmation: "password")

instructor = Instructor.create(user_id: user_two.id, name: "Ziggy Love")


user_three =  User.create(username: "Chris", email:"chris@test.com", password: "password", password_confirmation: "password")

instructor = Instructor.create(user_id: user_three.id, name: "Chris Scott")


user_four =  User.create(username: "Anna", email:"anna@test.com", password: "password", password_confirmation: "password")

instructor = Instructor.create(user_id: user_four.id, name: "Anna Tamara")


user_five =  User.create(username: "Nicole", email:"nicole@test.com", password: "password", password_confirmation: "password")

instructor = Instructor.create(user_id: user_five.id, name: "Nicole")


