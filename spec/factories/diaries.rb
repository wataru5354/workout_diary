FactoryBot.define do
  factory :diary do
    start_time  { Faker::Date.between(from: '2000-09-23', to: '2014-09-25') }
    site { Faker::Lorem.words }
    association :user

    after(:build) do |diary|
      diary.image.attach(io: File.open('public/images/test.png'), filename: 'test.jpg')
    end
  end
end
