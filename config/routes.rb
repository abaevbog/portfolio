Rails.application.routes.draw do
  get 'welcome_page/welcome'
  get '/hackathons/', to: 'hackathons#show'
  get '/projects/', to: 'projects#show'
  get '/kukusecretadmin/', to: 'visitors#show'
  get '/kukusecretform', to: 'my_form#show'
  get '/kukusecretmessage', to: 'messages#show'
  root 'welcome_page#welcome'
end
 