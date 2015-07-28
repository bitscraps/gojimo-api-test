Rails.application.routes.draw do
  root 'qualifications#index'

  resources :qualifications do
    resources :subjects
  end
end
