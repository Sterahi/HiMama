Rails.application.routes.draw do
    root to: "clock_event#index"
    post 'user/new' => 'user#create'
    post 'clock_event/new' => 'clock_event#create'

    patch 'user/:id/update' => 'user#update'
    patch 'clock_event/:id/update' => 'clock_event#update'

    resources :clock_event
    resources :user
end
