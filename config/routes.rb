Rails.application.routes.draw do
	get '/' => 'users#index'
	get '/users' => 'users#index'
	get '/users/new' => 'users#new'
	post '/users' => 'users#create'

	get '/question_nodes' => 'question_nodes#index'
	get 'question_nodes' => 'question_nodes#new'
	post '/question_nodes' => 'question_nodes#create'
	get '/question_nodes/:id' => 'question_nodes#show'

	get '/answers_nodes' => 'answer_nodes#index'
	get '/answer_nodes' => 'answer_nodes#new'
	post 'answer_nodes' => 'answer_nodes#create'
	get '/answer_nodes/:id' => 'answer_nodes#show'


end
