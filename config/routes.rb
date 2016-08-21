Rails.application.routes.draw do
resources :dreams 

root "dreams#index"

end
