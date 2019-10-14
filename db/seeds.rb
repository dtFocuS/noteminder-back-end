# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Folder.destroy_all
Reminder.destroy_all
Note.destroy_all

a1 = User.create(name: 'Danny')

f1 = Folder.create(name: "Credit Card Information", user_id: a1.id)

Note.create(content: "Credit Card", folder_id: f1.id, time: Time.now.strftime("%b %d %Y, at %R"))
Note.create(content: "Debit Card", folder_id: f1.id, time: Time.now.strftime("%b %d %Y, at %R"))
Note.create(content: "Walmert Gift Card", folder_id: f1.id, time: Time.now.strftime("%b %d %Y, at %R"))

