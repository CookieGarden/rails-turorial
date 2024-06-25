require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'responds successfully' do
    it 'GET /signup' do
      get signup_path
      expect(response).to have_http_status(200)
    end
  end
end
