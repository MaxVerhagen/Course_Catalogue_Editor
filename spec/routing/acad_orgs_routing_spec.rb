require "rails_helper"

RSpec.describe AcadOrgsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/acad_orgs").to route_to("acad_orgs#index")
    end

    it "routes to #new" do
      expect(:get => "/acad_orgs/new").to route_to("acad_orgs#new")
    end

    it "routes to #show" do
      expect(:get => "/acad_orgs/1").to route_to("acad_orgs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/acad_orgs/1/edit").to route_to("acad_orgs#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/acad_orgs").to route_to("acad_orgs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/acad_orgs/1").to route_to("acad_orgs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/acad_orgs/1").to route_to("acad_orgs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/acad_orgs/1").to route_to("acad_orgs#destroy", :id => "1")
    end
  end
end
