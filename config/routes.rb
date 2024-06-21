# frozen_string_literal: true

Rails.application.routes.draw do
  # http://127.0.0.1:3000/static_pages/home
  root  'static_pages#home'
  get   'static_pages/home'
  # http://127.0.0.1:3000/static_pages/help
  get   'static_pages/help'
  # http://127.0.0.1:3000/static_pages/about
  get   'static_pages/about'
end
