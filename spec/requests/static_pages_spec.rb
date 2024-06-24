# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'GET /' do
    it 'responds successfully' do
      get root_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /help' do
    it 'responds successfully' do
      get static_pages_help_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'GET /about' do
    it 'responds successfully' do
      get static_pages_about_path
      expect(response).to have_http_status(200)
    end
  end

  describe 'Get /contact' do
    it 'responds successfully' do
      get static_pages_contact_path
      expect(response).to have_http_status(200)
    end
  end
end
