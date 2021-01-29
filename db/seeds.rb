# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Sessions = session.create([{name: 'Vinyasa Flow'}, { name: 'Power Flow' }, {name: 'Restorative Flow'}])
# Client.create( name: 'Nicole', session: sessions.first)

#  create variable name and then do the below for multiple instrucotors 

user_one =  User.create(username: "Indigo", email:"indigo@test.com", password: "password", password_confirmation: "password")

instructor_one = Instructor.create(user_id: user_one.id, name: "Indigo Love")


user_two =  User.create(username: "Ziggy Love", email:"ziggy@test.com", password: "password", password_confirmation: "password")

instructor_two = Instructor.create(user_id: user_two.id, name: "Ziggy Love")


user_three =  User.create(username: "Chris", email:"chris@test.com", password: "password", password_confirmation: "password")

instructor_three = Instructor.create(user_id: user_three.id, name: "Chris Scott")


user_four =  User.create(username: "Anna", email:"anna@test.com", password: "password", password_confirmation: "password")

instructor_four = Instructor.create(user_id: user_four.id, name: "Anna Tamara")


user_five =  User.create(username: "Nicole", email:"nicole@test.com", password: "password", password_confirmation: "password")

instructor_five = Instructor.create(user_id: user_five.id, name: "Nicole")


# ^ should instructors each have a different name? 

#Seeded Sessions
session_one = Session.create(date: "01-02-2021", name: "Vinyasa Flow", time: "5:00pm", instructor_id: instructor_five.id, minutes: 60)
session_two = Session.create(date: "01-02-2021", name: "Vinyasa Flow", time: "8:00am", instructor_id: instructor_one.id, minutes: 60)
session_three = Session.create(date: "01-02-2021", name: "Vinyasa Flow", time: "6:00am", instructor_id: instructor_three.id, minutes: 60)
session_four = Session.create(date: "02-02-2021", name: "Vinyasa Flow", time: "5:00", instructor_id: instructor_four.id, minutes: 60)
session_five = Session.create(date: "03-02-2021", name: "Vinyasa Flow", time: "5:00", instructor_id: instructor_two.id, minutes: 60)


#Seeded Bookings
  # Booking.create(
  #   session: "Vinyasa Flow",
  #   client_name: "Student One",
  #   date: "01-02-2021"
  # )