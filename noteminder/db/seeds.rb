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

Note.create(content: "hello im note 1", folder_id: 1, time: Time.now.strftime("%b %d %Y, at %R"))
Note.create(content: "hello im note 2", folder_id: 2, time: Time.now.strftime("%b %d %Y, at %R"))
Note.create(content: "hello im note 3", folder_id: 5, time: Time.now.strftime("%b %d %Y, at %R"))
Note.create(content: "hello im note 4", folder_id: 7, time: Time.now.strftime("%b %d %Y, at %R"))
Note.create(content: "hello im note 5", folder_id: 4, time: Time.now.strftime("%b %d %Y, at %R"))
Note.create(content: "hello im note 6", folder_id: 57, time: Time.now.strftime("%b %d %Y, at %R"))
