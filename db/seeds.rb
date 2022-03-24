# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: 'test23@case.com',
            password: 'password',
            password_confirmation: 'password')
User.create!(email: 'john33@doe.com',
              password: 'password',
               password_confirmation: 'password')

10.times do |x|
  Tweet.create(body: "hello#{x}",user: User.first)
end