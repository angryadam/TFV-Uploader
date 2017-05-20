Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations"}
  resources :recordings
  root "recordings#index"
end
