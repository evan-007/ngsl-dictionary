NgslDictionary::Application.routes.draw do
  get "entries/index"
  get "entries/show"
  resources :entries
  root "entries#home"
end
