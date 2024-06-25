# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe 'responds successfully' do
    it 'GET /' do
      get root_path
      expect(response).to have_http_status(200)
    end

    it 'GET /help' do
      get help_path
      expect(response).to have_http_status(200)
    end

    it 'GET /about' do
      get about_path
      expect(response).to have_http_status(200)
    end

    it 'GET /contact' do
      get contact_path
      expect(response).to have_http_status(200)
    end
  end
end