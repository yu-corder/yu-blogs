Rails.application.routes.draw do

  get 'yu_blogs/genre/:id', to: 'yu_blogs#genre'
  get 'yu_blogs/genre/:id/:page', to: 'yu_blogs#genre'

  get 'yu_blogs/show/:id', to: 'yu_blogs#show'

  get 'blogposts', to: 'blogposts#index'

  resources :blogposts, only:[:new, :create, :edit, :update, :destroy]

  get 'blogposts/:id', to: 'blogposts#edit'

  
  get 'blogposts/destroy/:id', to: 'blogposts#destroy'
  post 'blogposts/destroy', to: 'blogposts#destroy'
  post 'blogposts/destroy/:id', to: 'blogposts#destroy'

  get 'bloggenres', to: 'bloggenres#index'

  resources :bloggenres, only:[:new, :create, :edit, :update]

  get 'bloggenres/:id', to: 'bloggenres#edit'
  
  devise_for :accounts
  root 'yu_blogs#index'

  resources :yu_blogs do
    collection do
      get 'search'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
