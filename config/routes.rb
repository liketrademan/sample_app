Rails.application.routes.draw do
  root 'static_pages#home'
  get '/signup', to: 'users#new'

  post '/signup', to: 'users#create'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'

  get '/contact', to: 'static_pages#contact'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  # 这里我把之前控制器users写成了user所以路由器名字也只能用user了
end
