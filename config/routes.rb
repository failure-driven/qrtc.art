# frozen_string_literal: true

Rails.application.routes.draw do
  resources :locations, only: %i[index show new create update] do
    collection do
      get :print
    end
    member do
      get :qr
    end
  end

  get "/qr/:id" => "locations#qr"
  get "/:id" => "locations#show"
  root to: "locations#index"
end
