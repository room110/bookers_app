Rails.application.routes.draw do
  root to: 'homes#top'


  post 'books' => 'todolists#create'

  get 'books' => 'todolists#index'

  get 'books/:id/edit' => 'todolists#edit', as:'edit_book'

  get 'books/:id' => 'todolists#show', as:'book'

  patch 'books/:id' => 'todolists#update'#, as:'book'

  delete 'books/:id' => 'todolists#destroy'#, as: 'book'
end



