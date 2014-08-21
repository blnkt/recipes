Rails.application.routes.draw do
    match('/', {:via => :get, :to => 'recipes#index'})
    match('/recipes', {:via => :get, :to => 'recipes#index'})
    match('recipes/new', {:via => :get, :to => 'recipes#new'})
    match('recipes/create', {:via => :post, :to => 'recipes#create'})
    match('recipes/:id', {:via => :get, :to => 'recipes#show'})
    match('recipes/:id/edit', {via: :get, to: 'recipes#edit'})
    match('recipes/:id', {:via => [:patch, :put], :to => 'recipes#update'})
    match('recipes/:id', {:via => :delete, :to => 'recipes#destroy'})
    match('recipes/:id', {:via => :post, :to => 'tags#add_tag'})

    match('/tags', {via: :get, to: 'tags#index'})
    match('tags/new', {:via => :get, :to => 'tags#new'})
    match('tags/create', {:via => :post, :to => 'tags#create'})
    match('tags/:id', {:via => :get, :to => 'tags#show'})
    match('tags/:id', {:via => :delete, :to => 'tags#destroy'})
end
