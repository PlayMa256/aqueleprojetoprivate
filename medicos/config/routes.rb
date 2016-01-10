Rails.application.routes.draw do
    devise_for :users
    resources :reclamacoes
    resources :replica
    resources :tipo
    # resources :usuario
root to: "home#index", as: "paginainicial"
end
