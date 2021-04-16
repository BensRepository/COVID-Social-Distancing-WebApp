Rails.application.routes.draw do
  get 'games/games'
  devise_for :users
  root 'home#home'
  get 'contact', to: 'home#contact'
  get 'games', to: 'games#games'
  get 'about', to: 'home#about'
  post 'request_contact', to: 'home#request_contact'
  mount SimpleDiscussion::Engine => "/forum"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
