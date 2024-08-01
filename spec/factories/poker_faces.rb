FactoryBot.define do
  factory :poker_face do
    name { Faker::Name.name }
    batch_id { Faker::IdNumber.valid }
    address { Faker::Address.full_address }
  end
end
