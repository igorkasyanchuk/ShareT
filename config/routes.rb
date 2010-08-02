Igorrails3demo::Application.routes.draw do
  resources :translations

  root :to => "translations#new"
  
  namespace "admin" do  
    match '/', :to => 'admin#index' 
    resources :languages
    resources :translations
  end
  
end