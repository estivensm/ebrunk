Rails.application.routes.draw do
  




  #brunk routes
  get 'brunks/step1/:id' , to: 'brunks#step1', as: 'step1'
  get 'brunks/step2/:id1/:id2' , to: 'brunks#step2', as: 'step2'
  get 'brunks/my_brunks'
  get 'brunks/show'
  get 'brunks/brunks_required'

  post 'brunks/create_brunk', to: 'brunks#create_brunk', as: 'create_brunk'

  #
  resources :properties
  resources :countries
  devise_for :runners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  
  get "runner_home", to: "welcome#runner_home", as: "runner_home"
  
  get "pagina_show", to: "welcome#pagina_show", as: "pagina_show"

  post "cambios/:id", to: "properties#cambios", as: "cambios"

end


