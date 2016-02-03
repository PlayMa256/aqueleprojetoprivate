Rails.application.routes.draw do
    devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'registrar'}
    resources :reclamacoes
    resources :replica
    resources :tipo
    # resources :usuario
    root to: "home#index", as: "paginainicial"
    get '/cadastrar/medicos/', to: "logins#medicos"
    get '/cadastrar/usarios/', to: "logins#clientes"
    #get '/login', to: "logins#login"
    get '/painel/', to: "painel#index", as: "painel"
    get '/painel/medicos', to: "usuarios#medicos"
end
