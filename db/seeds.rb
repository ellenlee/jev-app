# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

student_list = [
  { name: 'Eason', email: "newvry@hotmail.com" },
  { name: 'Chris', email: "wind3602@gmail.com" },
  { name: 'Paul', email: "lupochia@gmail.com" },
  { name: 'Jimmy', email: "jimmyyang5296@gmail.com" },
  { name: 'Vivian', email: "joweichen@hotmail.com" },
  { name: 'Arthur', email: "paradise121329@gmail.com" },
  { name: 'Jacky', email: "jacky7963@yahoo.com.tw" },
  { name: 'Nick', email: "misfotry0318@gmail.com" },
  { name: 'Ray', email: "jioherry@gmail.com" }
]

Track.create!(name:"web_13")

student_list.each do |student|
  User.create!( name: student[:name], email: student[:email], password: student[:email], role: 'student', track_id: 1 )
end



