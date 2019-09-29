FactoryBot.define do
  factory :book do
    title { FFaker::Book.title }
    short_description { FFaker::Lorem.phrase }
    description { FFaker::Book.description }
    price { rand(9.0..99.0).round(2) }
    category
  end
end
