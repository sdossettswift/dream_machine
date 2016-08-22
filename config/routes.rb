Rails.application.routes.draw do

resources :dreams, :dreamers

root "dreams#index"

end
