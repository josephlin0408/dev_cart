Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  #帳號管理
  devise_for :users


  #前台管理
    root 'posts#index'
    resources 'posts'


  #後台管理
  namespace :admin do
    root 'posts#index'
    resources 'posts'
  end
end
