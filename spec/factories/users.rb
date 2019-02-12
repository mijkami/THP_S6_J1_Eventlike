FactoryBot.define do
  factory :user do
  	first_name { "John" }
  	last_name { "Doe" }
  	email { "john.doe@email.com" }
  	encrypted_password { "Rat974Rat" }
    description {"Glad to help testing the whole thing, Awwwwww yeah !!!!"}
  end
end
