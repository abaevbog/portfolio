Rails.application.routes.draw do
  get 'welcome_page/welcome'
  get '/hackathons/', to: 'hackathons#show'
  get '/projects/', to: 'projects#show'
  get '/visitors/', to: 'visitors#show'
  get '/leaveamessage/', to: 'my_form#show'
  get '/messages/', to: 'messages#show'
  root 'welcome_page#welcome'
end
 