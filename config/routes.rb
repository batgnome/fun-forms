Rails.application.routes.draw do
  resources :funeral_infos
  resources :master_forms
  root 'master_forms#index'
  #get 'pdf' to 'master_forms#report'
end
