require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /static_pages/home" do
    it "success to get root" do
      get root_url
      expect(response).to have_http_status(200)
      # expect(response.body).to have_selector("title", text: "Home | Ruby on Rails Tutorial Sample App")
    end
  end
end
