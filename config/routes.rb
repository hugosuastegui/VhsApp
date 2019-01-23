Rails.application.routes.draw do
  resources :projects do
    member do
      get :toggle_status
    end
  end
  
  get 'nosotros', to: 'pages#nosotros'
  get 'proyectos', to: 'pages#proyectos'
  get 'contacto', to: 'pages#contacto'
  get 'intranet', to: 'pages#intranet'
  
  root to: 'pages#inicio'

end
