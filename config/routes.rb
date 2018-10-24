Rails.application.routes.draw do
  




  get 'contacts/index'
  get 'contacts/create'
  #brunk routes
  get 'brunks/step1/:id' , to: 'brunks#step1', as: 'step1'
  get 'brunks/step2/:id1/:id2' , to: 'brunks#step2', as: 'step2'
  get 'brunks/my_brunks', to: 'brunks#my_brunks', as: 'my_brunks'
  get 'brunks/show/:id', to: 'brunks#show', as: 'show'
  get 'brunks/show_required/:id', to: 'brunks#show_required', as: 'show_required'
  get 'brunks/brunks_required', to: 'brunks#brunks_required', as: 'brunks_required'

  post 'brunks/create_brunk', to: 'brunks#create_brunk', as: 'create_brunk'

  #
  resources :properties
  resources :countries
  devise_for :runners , :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  
  get "runner_home", to: "welcome#runner_home", as: "runner_home"
  
  get "pagina_show", to: "welcome#pagina_show", as: "pagina_show"

  post "cambios/:id", to: "properties#cambios", as: "cambios"

  #contacto routes

  post "new_contact", to: "contacts#create", as: "new_contact"

end


