Rails.application.routes.draw do
  
  # resources :articles

  get 'articles/new', to: 'articles#new'
  post 'articles', to: 'articles#create'

  get 'articles', to: 'articles#index'
  get 'articles/:id', to: 'articles#show', as: :article

  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
  patch 'articles/:id', to: 'articles#update'

  delete 'articles/:id', to: 'articles#destroy'

end
