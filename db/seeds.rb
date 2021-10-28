# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
puts "reset users and lessons"
User.destroy_all
Lesson.destroy_all
puts "crating seeds 🌱"
puts
puts "Create user"

User.create(username: "admin", display_name: "admin", password: "admin", role: "admin")
User.create(username: "JohnSmith", display_name: "John-o", password: "pass", role: "student" )

Lesson.create(title: "Move line up", category: "Editing", shortcut:"option+up", description: "Move selected line up")
Lesson.create(title: "Move line down", category: "Editing", shortcut:"option+down", description: "Move selected line down")
Lesson.create(title: "Copy line up", category: "Editing", shortcut:"option+shift+up", description: "Copy selected line up")
Lesson.create(title: "Copy line down", category: "Editing", shortcut:"option+shift+down", description: "Copy selected line down")
Lesson.create(title: "Delete all characters", category: "CLI", shortcut:"control+u", description: "Delete all characters from the command line")
Lesson.create(title: "Move cursor to beginning", category: "CLI", shortcut:"control+a", description: "Move the cursor to beginning of the command line")
Lesson.create(title: "Move cursor to end", category: "CLI", shortcut:"control+e", description: "Move the cursor to end of the command line")


Lesson.create(title: "search", category: "Search", shortcut:"command+f", description: "")
puts "🌳--Finished seeding!-- 🌳"