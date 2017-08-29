require "rails_helper"

RSpec.describe PAsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pas").to route_to("pas#index")
    end

    it "routes to #new" do
      expect(:get => "/pas/new").to route_to("pas#new")
    end

    it "routes to #show" do
      expect(:get => "/pas/1").to route_to("pas#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pas/1/edit").to route_to("pas#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pas").to route_to("pas#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pas/1").to route_to("pas#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pas/1").to route_to("pas#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pas/1").to route_to("pas#destroy", :id => "1")
    end

  end
end
