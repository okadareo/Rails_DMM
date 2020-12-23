Rails.application.routes.draw do
  get 'todolists/new'
  get 'top' => 'homes#top'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'

  get 'top2' => 'okadahomes#top'
  get 'okadatodolists/new'
  post 'okadareotodolists' => 'okadatodolists#create'
  get 'okadareotodolists' => 'okadatodolists#index'
  get 'okadareotodolists/:id' => 'okadatodolists#show', as: 'okada'
  get 'okadareotodolists/:id/edit' => 'okadatodolists#edit', as: 'edit_okada'
  patch 'okadareotodolists/:id' => 'okadatodolists#update', as: 'update_okada'
  delete 'okdareotodolists/:id' => 'okadatodolists#destroy', as: 'destroy_okada'
end