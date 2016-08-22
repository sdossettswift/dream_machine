Rails.application.routes.draw do
  get 'dreamers/new'

  get 'dreamers/edit'

  get 'dreamers/index'

  get 'dreamers/show'

resources :dreams 

root "dreams#index"

end
