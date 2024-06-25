# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  # http://127.0.0.1:3000/static_pages/home
  # root_path = /
  # root_url  = http://127.0.0.1:3000/
  root  'static_pages#home'
  get   '/help',    to: 'static_pages#help'
  get   '/about',   to: 'static_pages#about'
  get   '/contact', to: 'static_pages#contact'
  # contact_path = /contact
  # contact_url  = root_url + contact_path
end
