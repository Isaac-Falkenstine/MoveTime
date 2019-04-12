FactoryBot.define do
  factory :user do
    sequence :name { |n| "Marcus James#{n}" }
    sequence :password { "Password" }
    sequence :email { |n| "user@none_sense#{n}.com" }
  end
end
