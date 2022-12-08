Rails.application.routes.draw do
  devise_for :users
  root 'articles#index'
  
  resources :articles do 
    resources :comments, only: %i[create destroy] #para o comentario estar dentro do article
  end

  resources :categories, except: [:show]
end
