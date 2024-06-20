# frozen_string_literal: true
require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do
  describe "home" do
    it "GET /home" do
      get static_pages_home_url
      expect(response).to have_http_status(:success)
    end
  end
  describe "help" do
    it "GET /help" do
      get static_pages_help_url
      expect(response).to have_http_status(:success)
    end
  end
end
