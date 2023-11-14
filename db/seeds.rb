include ActionView::Helpers::TextHelper

puts "Cleaning DB 🧼"

User.destroy_all
Message.destroy_all
Chatroom.destroy_all

Chatroom.create(name: "Bouldering for Beginners🧗🏼‍♀️")
User.create(email: "iratxe@lewagon.com", nickname: "iratxe", password: "123456")
User.create(email: "bernardo@lewagon.com", nickname: "bernardo", password: "123456")

puts "Created #{pluralize(User.count, 'user')} and #{pluralize(Chatroom.count, 'chatroom')}"
