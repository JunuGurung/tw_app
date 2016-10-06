Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  get 'home'=>"pages#home"

  #get'apps'=>'apps/texty#texty'
  get 'apps/texty'=>'apps/texty#index'

  namespace :apps do
  	post '/texty/send_text' => 'texty#send_text'
  end
end
