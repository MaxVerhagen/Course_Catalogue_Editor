require 'rails_helper'

RSpec.describe "offering_histories/show", type: :view do
  before(:each) do
    @offering_history = assign(:offering_history, OfferingHistory.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
