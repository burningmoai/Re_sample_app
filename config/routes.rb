Rails.application.routes.draw do
  get 'lists/new'
   # get 'homes/top' URLと'コントローラ名#アクション名'が同じなら省略可能!!
  get '/top' => 'homes#top'
  post 'lists' => 'lists#create'
  get 'lists/:id' => 'lists#show', as: 'list'
  get 'lists/edit'
  get 'lists' => 'lists#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
