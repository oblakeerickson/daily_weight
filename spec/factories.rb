FactoryGirl.define do 
  factory :user do
    name      "Blake Erickson"
    email     "blake@example.com"
    password  "foobar"
    password_confirmation "foobar"
  end
end