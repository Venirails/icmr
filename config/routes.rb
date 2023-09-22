Rails.application.routes.draw do
  get 'profile/edit_profile'
  post 'profile/edit_profile'

  get 'password/forgot_password'
  post 'password/forgot_password'

  get 'password/reset_password'
  post 'password/reset_password'

  get 'account/singup'
  post 'account/singup'

  get 'account/login'
  post 'account/login'

  get 'account/dashboard'
  get 'account/logout'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
