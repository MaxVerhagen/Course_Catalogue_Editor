require 'rails_helper'

RSpec.describe "course_histories/index", type: :view do
  before(:each) do
    assign(:course_histories, [
      CourseHistory.create!(),
      CourseHistory.create!()
    ])
  end

  it "renders a list of course_histories" do
    render
  end
end
