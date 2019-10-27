FactoryBot.define do
  factory :offering_history do
    admin_course_id { 1 }
    offering_number { 1 }
    subject { "MyString" }
    catalogue_num { "MyString" }
    campus { "MyString" }
    schedule_course { "MyString" }
    course_id { 1 }
    course_history { nil }
  end
end
