Rails.application.routes.draw do
  root 'pages#home'
  get 'events/index'
  get 'events/show'
  get 'news/index'
  get 'news/show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end