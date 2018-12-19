Rails.application.routes.draw do

      namespace :v1 do
        resources :authors do
          resources :publications
        end
  end
end
