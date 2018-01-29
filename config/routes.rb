Rails.application.routes.draw do
  resources :sectors
  resources :technologies
  devise_for :users, :controllers => {:registrations => "registrations"}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/welcome/:id', to: 'home#welcome'
  get '/personalize/:id', to: 'home#personalize'
  patch  'edit_user_investor_status/:id', to: 'home#edit_user_investor_status', as: :edit_user_investor_status
  patch  'edit_user_personalization/:id', to: 'home#edit_user_personalization', as: :edit_user_personalization

  root to: "home#main"
end
