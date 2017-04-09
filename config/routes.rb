Rails.application.routes.draw do
  devise_for :users
  resources :users

  resources :blogs
  resources :hosted_events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'contact' => 'home#contact'

  get 'event_contact' => 'home#event_contact'

  get 'events/:id/members/:member_id' => 'events#show', as: 'events_member'
  resources :events
  resources :events do
    resources :member
  end

  get 'search' => 'events#index', as: :search

  get 'dashboard' => 'home#dashboard'

  put 'attain/:event_id' => 'events#attain', as: :attain
end


# CRUD Action in Rails
# C => Create an object
# R => Read an object
# U => Update an object
# D => Delete an object
