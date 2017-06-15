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

#answers page
	get '/answer_nodes/:id' => 'answer_nodes#show'



end
