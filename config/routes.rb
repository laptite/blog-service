Rails.application.routes.draw do

  devise_for :users
	root 'posts#index'

	resources :posts do 
		resource :comments
	end

	get '/about', to: 'pages#about'

end
