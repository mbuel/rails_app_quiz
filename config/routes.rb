Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'jobs/:id/show' => 'jobs#show'

  get 'jobs' => 'jobs#index'

  post 'jobs' => 'jobs#create'


end
