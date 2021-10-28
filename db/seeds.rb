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

Lesson.create(title: "Move line up", category: "Editing", shortcut:"option+up", description: "Moves selected line(s) up")
Lesson.create(title: "Move line down", category: "Editing", shortcut:"option+down", description: "Moves selected line(s) down")
Lesson.create(title: "Copy line up", category: "Editing", shortcut:"option+shift+up", description: "Copies selected line(s) up")
Lesson.create(title: "Copy line down", category: "Editing", shortcut:"option+shift+down", description: "Copies selected line(s) down")
Lesson.create(title: "Comment line", category: "Editing", shortcut:"control+/", description: "Comments out selected line(s)")
Lesson.create(title: "Move cursor to beginning", category: "CLI", shortcut:"control+a", description: "Moves the cursor to beginning of the command line")
Lesson.create(title: "Move cursor to end", category: "CLI", shortcut:"control+e", description: "Moves the cursor to end of the command line")
Lesson.create(title: "Cut all characters before cursor", category: "CLI", shortcut:"control+u", description: "Deletes all characters from the beginning of the line up to the cursor position, saves content to clipboard")
Lesson.create(title: "Cut all characters after cursor", category: "CLI", shortcut:"control+k", description: "Deletes all characters from the cursor to the end of the line, saves content to clipboard")
Lesson.create(title: "Paste cut characters", category: "CLI", shortcut:"control+y", description: "Pastes content saved to clipboard")


puts "🌳--Finished seeding!-- 🌳"