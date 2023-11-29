FactoryBot.define do
  factory :user do
    email { "steve@test.dev" }
    password { "password" }
    password_confirmation { "password" }
  end
end
