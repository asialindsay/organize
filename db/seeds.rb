Note.destroy_all
User.destroy_all

note1 = Note.create(title: 'Note 1', text: 'Blah')
note2 = Note.create(title: 'Note 2', text: 'Blah blah')
note3 = Note.create(title: 'Note 3', text: 'Blah blah blah')
note4 = Note.create(title: 'Note 4', text: 'Blah blah blah blah')

user1 = User.create(name: 'Jim')
user2 = User.create(name: 'Yifan')

user1.notes << note1
user1.notes << note2
user1.save

user2.notes << note3
user2.notes << note4
user2.save
