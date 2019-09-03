require 'rails_helper'

RSpec.describe "AcadOrgs", type: :request do
  describe "GET /acad_orgs" do
    it "works! (now write some real specs)" do
      get acad_orgs_path
      expect(response).to have_http_status(200)
    end
  end
end
