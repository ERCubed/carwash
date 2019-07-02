Rails.application.routes.draw do
  resources :vehicles, param: :license_plate, defaults: {format: :json}
  post 'wash/:license_plate', to: 'wash#create', defaults: {format: :json}
end
