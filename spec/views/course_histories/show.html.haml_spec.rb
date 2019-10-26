require 'rails_helper'

RSpec.describe "course_histories/show", type: :view do
  before(:each) do
    @course_history = assign(:course_history, CourseHistory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
