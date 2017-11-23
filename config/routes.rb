Rails.application.routes.draw do
  get 'doses/create'

  get 'doses/new'

  get 'doses/edit'

  get 'doses/update'

  get 'doses/destroy'

  get 'cocktails/index'

  get 'cocktails/show'

  get 'cocktails/new'

  get 'cocktails/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :cocktails, only:  [:index, :show, :new, :create] do
    resources :doses, only:[:create, :new, :edit, :uptdate, :destroy]
  end
end
