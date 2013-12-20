OpenParking::Application.routes.draw do
  root 'static#home'
  match '/about',   to: 'static#about',   via: 'get'
  
end
