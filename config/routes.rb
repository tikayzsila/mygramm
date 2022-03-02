Rails.application.routes.draw do
  
  root "pages#home"
  devise_for :users, controllers: { registrations: "registrations" }
  devise_scope :user do  
    get '/users/sign_out' => 'devise/sessions#destroy'     
 end

end
