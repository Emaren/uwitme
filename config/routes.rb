Rails.application.routes.draw do

  devise_for :instructors

  resources :students
    root 'students#index'



  end
