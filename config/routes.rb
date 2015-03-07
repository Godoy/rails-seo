Rails.application.routes.draw do
  root 'pages#home'

  get 'eventos' => 'events#index', as: :events
  get 'eventos/:id' => 'events#show', as: :event

  get 'noticias' => 'news#index', as: :news_index
  get 'noticias/:id' => 'news#show', as: :news
  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
end