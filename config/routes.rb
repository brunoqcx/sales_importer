Rails.application.routes.draw do
  root 'sales#index'

  resources :sales, only: :index do
    collection do
      post :import
    end
  end
end
