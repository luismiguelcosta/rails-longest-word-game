Rails.application.routes.draw do
  get 'new', to: 'pages#new'
  get 'score', to: 'pages#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

