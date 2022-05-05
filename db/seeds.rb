# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Doctor.destroy_all
Patient.destroy_all 
Appointment.destroy_all

10.times do 
    Doctor.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      zip_code: Faker::Address.zip_code
      )
end

30.times do 
    Patient.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name
   )
end



60.times do 
   Appointment.create!(
      doctor: Doctor.all.sample,
      patient: Patient.all.sample,
      date: Faker::Time.between_dates(from: Date.today - 60, to: Date.today, period: :day)
   )
end


