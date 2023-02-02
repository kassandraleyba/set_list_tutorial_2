Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/songs', to: 'songs#index'
  # accepting the route or accepting the request
  # what do we do with it?
  # we route it to a controller in action 
  # songs = controller index = action
  # DSL = domain specific language
  # writing ruby within rails routing DSL
  # next, how do we respond to the request? (uninitialized constant error)
  
  get '/songs/:id', to: 'songs#show'
  # i know this path (or request), send it to songs#show (the response)
  # think of it as a placeholder and then we respond in the controller

  get '/artists/:artist_id/songs', to: 'artist_songs#index'
end
