Rails.application.routes.draw do
  resources :projects
  get 'pages/inicio'
  get 'pages/nosotros'
  get 'pages/proyectos'
  get 'pages/contacto'
  get 'pages/intranet'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
