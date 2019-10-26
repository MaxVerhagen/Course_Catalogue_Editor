require 'rails_helper'

RSpec.describe "course_histories/edit", type: :view do
  before(:each) do
    @course_history = assign(:course_history, CourseHistory.create!())
  end

  it "renders the edit course_history form" do
    render

    assert_select "form[action=?][method=?]", course_history_path(@course_history), "post" do
    end
  end
end
