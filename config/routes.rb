Rails.application.routes.draw do
  resources :pizzas do
    resources :ingredients
  end
end
