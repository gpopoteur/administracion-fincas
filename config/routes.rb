Sigco::Application.routes.draw do
  
  resources :materiales_auditoria

  resources :auditoria

  resources :auditors

  resources :visita

  resources :materials

  resources :inscripcions

  resources :materia_cursos

  resources :profesors

  resources :materia

  resources :cursos

  resources :administradors

  resources :fichas

  root 'vecinos#index'

  resources :vecinos

  get 'facturas' => 'facturas#index'
  get 'facturas/create' => 'facturas#new'
  get 'facturas/:id' => 'facturas#show', :as => :factura
  post 'facturas' => 'facturas#create'

end
