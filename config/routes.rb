Rails.application.routes.draw do
  get 'blogposts/index'
  get 'blogposts/new'
  get 'blogposts/create'
  get 'blogposts/edit'
  get 'blogposts/update'
  get 'blogposts/destroy'
  get 'bloggenres/index'
  get 'bloggenres/new'
  get 'bloggenres/create'
  get 'bloggenres/edit'
  get 'bloggenres/update'
  devise_for :accounts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
