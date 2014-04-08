Myapp::Application.routes.draw do


  resources :categories


  resources :zayvkas

  resources :categories do
    resources :photos
  end

  root to: 'static_pages#Glavnaya'
  match '/KLUB', to: 'static_pages#O_KLUBE'

  match '/Raspisanie', to: 'static_pages#Raspisanie'
  match '/Novosti', to: 'static_pages#Novosti'
  match '/contacts', to: 'static_pages#contacts'
  match '/Zayavka_na_vstyplenie', to: 'static_pages#Zayavka_na_vstyplenie'
  match '/Glavnaya', to: 'static_pages#Glavnaya'
  get '/media', to: 'categories#index'
  end



