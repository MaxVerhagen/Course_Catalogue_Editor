require 'rails_helper'

RSpec.describe "acad_orgs/show", type: :view do
  before(:each) do
    @acad_org = assign(:acad_org, AcadOrg.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
