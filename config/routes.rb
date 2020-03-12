Rails.application.routes.draw do

	root 'posts#index'

	resources :posts do 
		resource :comments
	end

	get '/about', to: 'pages#about'

end
