FactoryBot.define do
  factory :profile do
    name { Faker::Name.name }
    link { Faker::Internet.url }
    bio { Faker::Lorem.paragraph }
    user
  end
end
