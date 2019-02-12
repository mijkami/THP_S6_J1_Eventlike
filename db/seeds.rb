#(rand(X.first.id..X.last.id))

require 'faker'

User.destroy_all
Event.destroy_all
Attendance.destroy_all

10.times do 
  user = User.create!(email: Faker::Internet.email, description: Faker::BojackHorseman.quote , first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, encrypted_password: Faker::Crypto.md5)
end

10.times do 
  event = Event.create!(start_date: Faker::Date.forward(23), duration: rand(1..15) * 5, title:Faker::Esport.event , description: Faker::PrincessBride.quote, price:Faker::Number.decimal(3), location:Faker::Dune.planet)
end 

6.times do 
  attendance = Attendance.create!(user_id: rand(User.first.id..User.last.id), event_id: rand(Event.first.id..Event.last.id), stripe_customer_id: SecureRandom.urlsafe_base64)
end
