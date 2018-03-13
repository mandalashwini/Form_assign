Rails.application.routes.draw do
  
  get 'welcome/index'
  root 'welcome#index'
   get 'student/new'
   post 'student/create'
   get 'student/show'
   #get '/student/:id', to:'student#show',as:'student'
end
