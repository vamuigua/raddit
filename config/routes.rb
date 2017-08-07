Rails.application.routes.draw do
  devise_for :users
	#root of app set
	root 'links#index'
	
  resources :links do
  	member do
  		put "like",    to: "links#upvote"
  		put "dislike", to: "link#downvote" 
  	end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
