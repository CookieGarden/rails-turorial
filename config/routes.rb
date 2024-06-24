# frozen_string_literal: true

Rails.application.routes.draw do
  # http://127.0.0.1:3000/static_pages/home
  root  'static_pages#home'
  # /
  get   'static_pages/home'
  # /help
  get   'static_pages/help'
  # /about
  get   'static_pages/about'
  # /contact
  get   'static_pages/contact'
end
