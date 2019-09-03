require 'rails_helper'

RSpec.describe "acad_orgs/new", type: :view do
  before(:each) do
    assign(:acad_org, AcadOrg.new())
  end

  it "renders new acad_org form" do
    render

    assert_select "form[action=?][method=?]", acad_orgs_path, "post" do
    end
  end
end
