FactoryGirl.define do
  factory :user do
    name      "Blake Erickson"
    email     "blake@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end

  factory :weight do
    date Date.new
    weight 195.5
    user
  end
end