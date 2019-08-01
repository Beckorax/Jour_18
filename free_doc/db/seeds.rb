# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
25.times do
  c = City.create!(name: Faker::Address.city)
  p = Patient.create!(first_name: Faker::FunnyName.name)
  d = Doctor.create!(first_name: Faker::FunnyName.name)
  s = Specialty.create!(name: Faker::Educator.subject)
  Appointment.create(doctor: d, patient: p)
  DealWithIt.create(doctor: d, speciality: s)
end
