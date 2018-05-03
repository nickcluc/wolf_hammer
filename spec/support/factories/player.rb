FactoryBot.define do
  factory :player do
    sequence(:email) {|n| "user#{n}@example.com" }
    first_name "Nick"
    last_name "Clucas"
  end
end
