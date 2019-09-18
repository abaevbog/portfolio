Rails.application.routes.draw do
  get 'welcome_page/welcome'
  get '/hackathons/', to: 'hackathons#show'
  get '/projects/', to: 'projects#show'
  root 'welcome_page#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
