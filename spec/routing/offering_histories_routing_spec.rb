require "rails_helper"

RSpec.describe OfferingHistoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/offering_histories").to route_to("offering_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/offering_histories/new").to route_to("offering_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/offering_histories/1").to route_to("offering_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/offering_histories/1/edit").to route_to("offering_histories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/offering_histories").to route_to("offering_histories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/offering_histories/1").to route_to("offering_histories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/offering_histories/1").to route_to("offering_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/offering_histories/1").to route_to("offering_histories#destroy", :id => "1")
    end
  end
end
