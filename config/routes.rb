Rails.application.routes.draw do
  root "projects#new"
  resources :projects do
    resources :lanes
  end
end
