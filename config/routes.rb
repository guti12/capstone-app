Rails.application.routes.draw do
	get '/' => 'users#index'

#user sign up 
	get '/signup' => 'users#new'
	post '/users' => 'users#create'

#user login

	get '/login' => 'sessions#new'
	post '/login' => 'sessions#create'
	get '/logout' => 'sessions#destroy'

#questions page
	get '/question_nodes/:id' => 'question_nodes#show'
	post '/answer/:id' => 'question_nodes#answer'

#answers page
	get '/answer_nodes/:id' => 'answer_nodes#show'

#create page for carted products
	post '/cart' => 'carted_products#create'

end
