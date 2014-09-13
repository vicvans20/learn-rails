Rails.application.routes.draw do
  LearnRails::Application.routes.draw do
    root to: 'visitors#new'
  end
end
