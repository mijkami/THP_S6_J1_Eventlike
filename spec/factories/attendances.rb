FactoryBot.define do
  factory :attendance do
    stripe_customer_id { "CustomerUniqueId" }
    event { FactoryBot.create(:event) }
    user { FactoryBot.create(:user) }
  end
end
