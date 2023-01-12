Rails.application.routes.draw do
#   get 'lists/new'
   # get 'homes/top' URLと'コントローラ名#アクション名'が同じなら省略可能!!
  get 'top' => 'homes#top'
#   post 'lists' => 'lists#create'
#   get 'lists' => 'lists#index'
#   get 'lists/:id' => 'lists#show', as: 'list'
#   get 'lists/:id/edit' => 'lists#edit', as: 'edit_list'
#   patch 'lists/:id' => 'lists#update', as: 'update_list'
#   delete 'list/:id' => 'lists#destroy', as: 'destroy_list'

resources :lists #簡単に
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
