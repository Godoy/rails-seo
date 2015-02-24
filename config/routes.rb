Rails.application.routes.draw do
  root 'pages#home'

  get 'events' => 'events#index', as: :events
  get 'events/:id' => 'events#show', as: :event

  get 'news' => 'news#index', as: :news_index
  get 'news/:id' => 'news#show', as: :news
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end