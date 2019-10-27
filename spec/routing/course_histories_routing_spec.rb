require "rails_helper"

RSpec.describe CourseHistoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/course_histories").to route_to("course_histories#index")
    end

    it "routes to #new" do
      expect(:get => "/course_histories/new").to route_to("course_histories#new")
    end

    it "routes to #show" do
      expect(:get => "/course_histories/1").to route_to("course_histories#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/course_histories/1/edit").to route_to("course_histories#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/course_histories").to route_to("course_histories#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/course_histories/1").to route_to("course_histories#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/course_histories/1").to route_to("course_histories#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/course_histories/1").to route_to("course_histories#destroy", :id => "1")
    end
  end
end
