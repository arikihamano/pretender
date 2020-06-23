Rails.application.routes.draw do
  devise_for :users
  root 'quizzes#index'

  get '/themes/new', to: 'themes#new'
  get '/themes/index', to: 'themes#index'
  post '/themes/new', to: 'themes#create'

end
