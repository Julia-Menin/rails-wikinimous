# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Removing articles..."
Article.destroy_all
puts "Done!"

puts "Creating articles..."
10.times do
  article = Article.new(
    title: Faker::Marketing.buzzwords.capitalize,
    content: Faker::Lorem.paragraph_by_chars
  )
  article.save!
end

puts "Articles created!"
