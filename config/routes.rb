Rails.application.routes.draw do
  root "articles#index"

  resources :articles do
    resources :comments, only: [:create, :destroy]
  end

  get "comments/bulk", "comments#bulk"
  post "comments/bulk_insert", "comments#bulk_insert"
  delete 'comments/:id(.:format)', :to => 'photos#destroy'
end
