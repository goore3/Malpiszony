Rails.application.routes.draw do
  devise_for :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :employee do  
    get "/employees/sign_out" => "devise/sessions#destroy"     
  end
  # Defines the root path route ("/")
  root to: "public#home"
  get '/animals', to: "animals#index"
end
