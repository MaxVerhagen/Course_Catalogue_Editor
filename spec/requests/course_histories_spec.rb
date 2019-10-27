require 'rails_helper'

RSpec.describe "CourseHistories", type: :request do
  describe "GET /course_histories" do
    it "works! (now write some real specs)" do
      get course_histories_path
      expect(response).to have_http_status(200)
    end
  end
end
