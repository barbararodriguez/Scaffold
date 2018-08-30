Rails.application.routes.draw do
    
   
    
  get 'welcome/index'
    resources :blogs do
        resources :comments
    end
    
    resources :groups do 
        resources :students
    end
    
    root :to => "welcome#index"
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
