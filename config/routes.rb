Rails.application.routes.draw do
  resources :master_forms
  root 'master_forms#index'
end
