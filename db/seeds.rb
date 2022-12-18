# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create name: 'User', email: 'test@email.com', password: 'password', password_confirmation: 'password'
User.create name: 'John', email: 'john@doe.com', password: 'password', password_confirmation: 'password'

10.times do |time|
  Post.create title: "Title #{time + 1}", body: "Body #{time + 1} words go brr", user_id: User.first.id
end
