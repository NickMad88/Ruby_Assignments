Rails.application.routes.draw do
  get "user" => "user#index"
  get "user/new" => "user#new"
  get "user/total" => "user#total"
  get "user/:id" => "user#show"
  get "user/:id/edit" => "user#edit"
  post "user" => "user#create"
end