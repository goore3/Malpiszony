Rails.application.routes.draw do
  devise_for :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_scope :employee do  
    get "/employees/sign_out" => "devise/sessions#destroy"     
  end
  # Defines the root path route ("/")
  root "public#home"

  scope 'admin', as: 'admin' do
    resources :reservations, :events, :animals
  end

  resources :reservations, only: :new
end
