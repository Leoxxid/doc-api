Rails.application.routes.draw do
  resources :users do
    resource :address, only: %i[show update destroy]
  end
end
