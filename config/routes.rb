Rails.application.routes.draw do
  resources :post, only: [:index, :show, :new, :create]

  put 'posts/:id', to: 'posts#update'
  get 'posts/:id/edit', to: 'posts#edit', as: :edit_post
  # get 'articles/:id/edit', to: 'articles#edit', as: :edit_article

  # patch 'articles/:id', to: 'articles#update'
end
