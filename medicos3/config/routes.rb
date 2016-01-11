Rails.application.routes.draw do
  devise_for :usuarios
  resources :reclamacoes
    root to: "home#index"
end
