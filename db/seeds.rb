# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u1 = User.create!(username: "cpoushyk", password_digest: "test")

p1 = Profile.create!(first_name: "Charlotte", middle_names: "Maeve", last_name: "Poushyk", email: "charlotte.poushyk@gmail.com", phone_number: "(843) 637-5924", image: "https://pbs.twimg.com/profile_images/1550536084194578436/_zJmJ1RV_400x400.jpg", user_id: u1.id)
puts p1.id
mp1 = MedicalProfile.create!(user_id: u1.id, weight: 200, height: 62, hair_color: "black", eye_color: "dark brown", race: "white", sex: "Male", gender: "female", blood_type: "AB+", birth_date: Date.new(2000, 6, 26))
puts mp1.id

st1 = Station.create!(name: "Example Prime Station", city: "Testville", state: "North Exampleson", street_address: "100 Test Drive", station_phone_number: "(999) 999-9999")

sl1 = Service.create!(station_id: st1.id, service_type: "Law Enforcement", service_phone_number: st1.station_phone_number)
