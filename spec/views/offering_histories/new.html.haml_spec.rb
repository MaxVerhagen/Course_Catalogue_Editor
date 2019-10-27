require 'rails_helper'

RSpec.describe "offering_histories/new", type: :view do
  before(:each) do
    assign(:offering_history, OfferingHistory.new())
  end

  it "renders new offering_history form" do
    render

    assert_select "form[action=?][method=?]", offering_histories_path, "post" do
    end
  end
end
