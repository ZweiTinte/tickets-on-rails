Rails.application.routes.draw do
  root "projects#show"
  resources :projects do
    resources :lanes
  end
  get 'projects/:id', to: 'projects#show'
  post 'tickets/new', to: 'tickets#new'
end
