Rails.application.routes.draw do
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
