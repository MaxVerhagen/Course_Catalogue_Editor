require 'rails_helper'

RSpec.describe "course_histories/new", type: :view do
  before(:each) do
    assign(:course_history, CourseHistory.new())
  end

  it "renders new course_history form" do
    render

    assert_select "form[action=?][method=?]", course_histories_path, "post" do
    end
  end
end
