FactoryGirl.define do
  factory :user do
    name 'Bob'
    email 'b@b.com'
    password 'password'
  end

  factory :food do
    name 'chicken'
    calories 275
  end

  factory :meal do

  end
end
