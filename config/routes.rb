Rails.application.routes.draw do
  root 'welcome#index'
  get "/auth/:provider/callback" => "sessions#create"
  delete "/logout" => "sessions#destroy", as: :logout

  resources :events do
    resources :tickets
  end

  resources :retirements

  get 'status' => 'status#index', defaults: {format: 'json'}
end
