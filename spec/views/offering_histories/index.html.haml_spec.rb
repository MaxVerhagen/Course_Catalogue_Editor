require 'rails_helper'

RSpec.describe "offering_histories/index", type: :view do
  before(:each) do
    assign(:offering_histories, [
      OfferingHistory.create!(),
      OfferingHistory.create!()
    ])
  end

  it "renders a list of offering_histories" do
    render
  end
end
