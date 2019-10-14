FactoryBot.define do
  factory :organisation do
    effective_date { "2019-09-15" }
    name { "MyString" }
    status { false }
    description { "MyText" }
    short_description { "MyString" }
    formal_description { "MyText" }
  end
end
