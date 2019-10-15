Rails.application.routes.draw do
  get 'welcome_page/welcome'
  get '/hackathons/', to: 'hackathons#show'
  get '/projects/', to: 'projects#show'
  get '/kukusecretadmin/', to: 'visitors#show'
  root 'welcome_page#welcome'
end
