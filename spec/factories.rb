FactoryGirl.define do
  factory :user do
    name     "Phil Garber"
    email    "phil@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end