Rails.application.routes.draw do
  get 'tasks/new'

  get 'tasks/create'

  get 'tasks/show'

  get 'tasks/edit'

  get 'tasks/update'

  get 'tasks/destroy'

  resources :posts
  root "posts#index"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
