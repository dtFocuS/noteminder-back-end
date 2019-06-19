# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Note.destroy_all
Note.create(title: "note1", content: "hello im note 1", folder_id: 1)
Note.create(title: "note2", content: "hello im note 2", folder_id: 1)
Note.create(title: "note3", content: "hello im note 3", folder_id: 2)
Note.create(title: "note4", content: "hello im note 4", folder_id: 2)
Note.create(title: "note5", content: "hello im note 5", folder_id: 3)
Note.create(title: "note6", content: "hello im note 6", folder_id: 4)
