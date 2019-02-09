Rails.application.routes.draw do

  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register'}

  resources :projects do
    member do
      get :toggle_status
    end
  end
  
  get 'inicio', to: 'pages#inicio'
  get 'nosotros', to: 'pages#nosotros'
  get 'proyectos', to: 'pages#proyectos'
  get 'contacto', to: 'pages#contacto'
  get 'intranet', to: 'pages#intranet'

  root to: 'pages#inicio'

end
