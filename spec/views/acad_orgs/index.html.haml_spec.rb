require 'rails_helper'

RSpec.describe "acad_orgs/index", type: :view do
  before(:each) do
    assign(:acad_orgs, [
      AcadOrg.create!(),
      AcadOrg.create!()
    ])
  end

  it "renders a list of acad_orgs" do
    render
  end
end
