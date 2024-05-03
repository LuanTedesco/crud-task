Rails.application.routes.draw do
  root "tasks#index"
  resources :tasks
  resources :tasks do
    patch "toggle_finished", on: :member
  end
end
