require 'rails_helper'

RSpec.describe "acad_orgs/edit", type: :view do
  before(:each) do
    @acad_org = assign(:acad_org, AcadOrg.create!())
  end

  it "renders the edit acad_org form" do
    render

    assert_select "form[action=?][method=?]", acad_org_path(@acad_org), "post" do
    end
  end
end
