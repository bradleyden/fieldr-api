require 'rails_helper'

RSpec.describe "Pas", type: :request do
  describe "GET /pas" do
    it "works! (now write some real specs)" do
      get pas_path
      expect(response).to have_http_status(200)
    end
  end
end
