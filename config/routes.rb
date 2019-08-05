Rails.application.routes.draw do
  # resources :posts, only: [:index, :show, :new, :create]
  get 'articles/:id/edit', to: 'articles#edit', as: :edit_article
end
