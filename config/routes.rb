Rails.application.routes.draw do
  resources :quizzes do
    resources :questions do
      resources :choices
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
