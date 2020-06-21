Rails.application.routes.draw do
  devise_for :users
  root 'quizzes#index'

  get '/themes/new', to: 'themes#new'
  post '/themes/new', to: 'themes#create'

end
