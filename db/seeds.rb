# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

puts "crating seeds 🌱"
puts
puts "Create user"

User.create(username: "firstuser", password: "firstpass")

Lesson.create(title: "Move line up", category: "Editing", shortcut:"option+up", description: "")
Lesson.create(title: "Move line down", category: "Editing", shortcut:"option+down", description: "")
Lesson.create(title: "Copy line up", category: "Editing", shortcut:"option+shift+up", description: "")
Lesson.create(title: "Copy line down", category: "Editing", shortcut:"option+shift+down", description: "")


Lesson.create(title: "search", category: "Search", shortcut:"command+f", description: "")
puts "🌳--Finished seeding!-- 🌳"