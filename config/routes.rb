NgslDictionary::Application.routes.draw do
  get "entries/index"
  get "entries/show"
  get "tools/form"
  get "tools/report"
  post "tools/report"
  resources :entries
  root "entries#home"
end
