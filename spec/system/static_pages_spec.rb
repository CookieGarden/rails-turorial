# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'StaticPages', type: :system do
  describe 'GET /' do
    it 'has the correct title' do
      visit root_path
      expect(page).to have_title('Ruby on Rails Tutorial Sample App')
    end
  end

  describe 'GET /help' do
    it 'has the correct title' do
      visit static_pages_help_path
      expect(page).to have_title('Help | Ruby on Rails Tutorial Sample App')
    end
  end

  describe 'GET /about' do
    it 'has the correct title' do
      visit static_pages_about_path
      expect(page).to have_title('About | Ruby on Rails Tutorial Sample App')
    end
  end

  describe 'GET /contact' do
    it 'has the correct title' do
      visit static_pages_contact_path
      expect(page).to have_title('Contact | Ruby on Rails Tutorial Sample App')
    end
  end
end
