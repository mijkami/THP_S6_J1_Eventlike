require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

puts "'User', 'Event' and 'Attendance' previous bases destroyed"
puts "Starting generation of a new 'User' seed, hold on"
puts "..."

10.times do 
  user = User.create!(email: Faker::Internet.email, description: Faker::BojackHorseman.quote , first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, encrypted_password: Faker::Crypto.md5)
end

puts "Generation of 'Users' seed done"
puts "..."
puts "Starting generation of a new 'Event' seed, hold on"
puts "..."

20.times do
  event = Event.create!(title:Faker::Esport.event, description: Faker::PrincessBride.quote + Faker::PrincessBride.quote, price:Faker::Number.decimal(3), location: Faker::Dune.planet, start_date: Faker::Date.forward(23), duration: rand(1..15) * 5, administrator_id: rand(User.first.id..User.last.id))
end

puts "Generation of 'Event' seed done"
puts "..."
puts "Starting generation of a new 'Attendance' seed, hold on"
puts "..."

20.times do
  attendance = Attendance.create!(attendee_id: rand(User.first.id..User.last.id), event_id: rand(Event.first.id..Event.last.id), stripe_customer_id: SecureRandom.urlsafe_base64)
end

puts "Generation of Attendance seed done"
puts "..."
puts "All seeds should be generated right now !"
