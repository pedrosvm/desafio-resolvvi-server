Rails.application.routes.draw do
	if Rails.env.development?
		mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute"
	end
	post "/graphql", to: "graphql#execute"
	devise_for :users,
		path: '',
		defaults: {
			format: :json
		},
		path_names: {
			sign_in: 'login',
			sign_out: 'logout',
			registration: 'signup'
		},
		controllers: {
			sessions: 'sessions'
		}
	resources :states, only: %w(index)
	resources :requests
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
