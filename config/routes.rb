Rails.application.routes.draw do
  root to: 'industries#index'
  resources :industries do
    resources :businesses, except: [:index]
  end
end
