Rails.application.routes.draw do
  resources :properties
  resources :countries
  devise_for :runners
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'welcome#index'
  
  get "runner_home", to: "welcome#runner_home", as: "runner_home"
  
  get "pagina_show", to: "welcome#pagina_show", as: "pagina_show"

  post "cambios/:id", to: "properties#cambios", as: "cambios"

end


