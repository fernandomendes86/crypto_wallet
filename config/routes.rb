Rails.application.routes.draw do
  resources :mining_types
  get 'welcome', to: 'welcome#index'

  get 'mostra_funcao', to: 'mining_types#mostra_funcao', as: 'mostra_funcao'
  #get '/inicio', to: 'welcome#index'

  post 'salvar_mining_types', to: 'coins#salvar_mining_types', as: 'salvar_mining_types'
  resources :coins

  #get '/coins', to: 'coins#index'

  root "welcome#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



end
