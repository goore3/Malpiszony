# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

1.upto(3) do |i|
    Employee.create(email: "test#{i}@test.com", password: "testtest", password_confirmation: "testtest")
1.upto(5) do |i|
    Animal.create(name: "Zwierze#{i}", species:"Gatunek", age:4, enclosure_id:1, created_at: Time.now, updated_at: Time.now)
end