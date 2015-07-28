Rails.application.routes.draw do
  root 'qualifications#index'

  resources :qualifications
end
