Rails.application.routes.draw do
  resources :post_images, only: [:new, :index, :show]
                          #onlyはその中のアクションしかルーティングしない。
  devise_for :users
  root to: 'homes#top'
  get '/homes/about' => 'homes#about'
 
  resources :post_images, only: [:new, :create, :index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
