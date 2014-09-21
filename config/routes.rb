Rails.application.routes.draw do
  LearnRails::Application.routes.draw do
    post 'contact', to: 'contact#process_form'
    root to: 'visitors#new'
  end
end
