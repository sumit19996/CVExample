Rails.application.routes.draw do
#get 'employees/index', to: 'employees#index'
#get 'employees/:id', to: 'employees#destroy'
get 'employees/profile', to: 'employees#profile'
#get 'employees/:id', to: 'employees#destroy'
resources :employees do
	resources :employee_details
end

get 'profile', to: 'employees#profile'

# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
