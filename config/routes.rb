Rails.application.routes.draw do
  root "prompts#index"

  resources :prompts do
    resources :feedbacks
  end
end
