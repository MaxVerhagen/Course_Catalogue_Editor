FactoryBot.define do
  factory :offering do
    admin_course_id { 1 }
    offering_number { 1 }
    subject { "MyString" }
    catalogue_num { "MyString" }
    campus { "MyString" }
    schedule_course { "MyString" }
    course { nil }
  end
end
