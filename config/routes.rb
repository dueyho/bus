BusTimetable::Application.routes.draw do
  root :to => 'stops#index'
  resources :lines
  resources :stations
  resources :stops
  # match('/stops/new/', {:via => :, :to => 'lines#new'})
  # match('/stops/new/', {:via => :get, :to => 'lines#create'})
  # match('/stops/new/', {:via => :, :to => 'stations#new'})
  # match('/stops/new/', {:via => :get, :to => 'stations#create'})
end
