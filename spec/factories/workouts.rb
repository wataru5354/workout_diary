FactoryBot.define do
  factory :workout do
    menu {Faker::Name}
    weight {"#{Faker::Number.number(digits: 2)}kg"}
    rep {Faker::Number.number(digits: 1)}
    set {Faker::Number.number(digits: 1)}
    association :diary
  end
end
