require 'rails_helper'

RSpec.describe "offering_histories/edit", type: :view do
  before(:each) do
    @offering_history = assign(:offering_history, OfferingHistory.create!())
  end

  it "renders the edit offering_history form" do
    render

    assert_select "form[action=?][method=?]", offering_history_path(@offering_history), "post" do
    end
  end
end
