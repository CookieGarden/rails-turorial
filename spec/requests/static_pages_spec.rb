# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /static_pages' do
    it 'success to get root page' do
      get root_url
      expect(response).to have_http_status(200)
      expect(response.body).to include('Ruby on Rails Tutorial Sample App')
    end

    it 'success to get about page' do
      get static_pages_about_path
      expect(response).to have_http_status(200)
      expect(response.body).to include('About | Ruby on Rails Tutorial Sample App')
    end

    it 'success to get help page' do
      get static_pages_help_path
      expect(response).to have_http_status(200)
      expect(response.body).to include('Help | Ruby on Rails Tutorial Sample App')
    end
  end
end
