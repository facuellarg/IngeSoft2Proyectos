Rails.application.routes.draw do
  resources :grupos
  resources :facultads
  resources :docentes
  resources :asignaturas
  resources :materia
  resources :carreras
  resources :estudiantes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
