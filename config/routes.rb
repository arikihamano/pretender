Rails.application.routes.draw do
  devise_for :users
  root 'quizzes#index'

  resources :themes, only: %i(new create)

end
