Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


#   RestaurantsController
#   routing
#     routes to #index (FAILED - 15)
#     routes to #new (FAILED - 16)
#     routes to #show (FAILED - 17)
#     routes to #create (FAILED - 18)

# ReviewsController
#   routing
#     routes to #new (FAILED - 19)
#     routes to #create (FAILED - 20)

resources :restaurants,  only: [ :index, :new, :show, :create ] do
  resources :reviews, only: [ :new, :create ]
end


end
