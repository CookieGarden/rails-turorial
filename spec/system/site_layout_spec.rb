# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Site Layout', type: :system do
  before do
    driven_by(:rack_test)
    visit root_path
  end

  describe 'GET /home' do
    click_link 'Home'
    scenario '正しく遷移できているか' do
      expect(page).to have_content('Welcome to the Sample App')
    end

    scenario '正しいタイトルが表示されているか' do
      expect(page).to have_title('Ruby on Rails Tutorial Sample App')
    end
  end

  describe 'GET /about' do
    click_link 'About'
    scenario '正しく遷移できているか' do
      expect(page).to have_content('Ruby on Rails Tutorial is a book and screencast')
    end

    scenario '正しいタイトルが表示されているか' do
      expect(page).to have_title('About | Ruby on Rails Tutorial Sample App')
    end
  end

  describe 'GET /help' do
    click_link 'Help'
    scenario '正しく遷移できているか' do
      expect(page).to have_content('Get help on the Ruby on Rails Tutorial')
    end

    scenario '正しいタイトルが表示されているか' do
      expect(page).to have_title('Help | Ruby on Rails Tutorial Sample App')
    end
  end

  describe 'GET /contact' do
    click_link 'Contact'
    scenario '正しく遷移できているか' do
      expect(page).to have_content('Contact the Ruby on Rails Tutorial')
    end

    scenario '正しいタイトルが表示されているか' do
      expect(page).to have_title('Contact | Ruby on Rails Tutorial Sample App')
    end
  end
end
