Rails.application.routes.draw do
  LearnRails::Application.routes.draw do
    resources :contacts, only: [:new, :create]
    root to: 'visitors#new'
  end
end
