FactoryBot.define do
  factory :course_history do
    effective_date { "2019-10-26" }
    admin_course_id { 1 }
    status { false }
    short_title { "MyText" }
    long_title { "MyText" }
    min_units { 1 }
    max_units { 1 }
    progress_units { 1.5 }
    grading { "MyString" }
    last_course { false }
    enrollment_unit_calc { 1 }
    description { "MyText" }
    course { nil }
  end
end
