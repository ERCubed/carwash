Rails.application.routes.draw do
  resources :vehicles, param: :license_plate, defaults: {format: :json}
end
