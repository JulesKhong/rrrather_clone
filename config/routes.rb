Rails.application.routes.draw do
  root "prompts#index"

  resources :prompts
  resources :feedbacks
end
