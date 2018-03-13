Rails.application.routes.draw do
  
  get 'welcome/index'
  root 'welcome#index'
   get 'student/new'
   post 'student/create'
  
   get 'student/index'
   put '/student/:id',to:'student#update',as:'update_student'
   get '/student/:id/edit', to:'student#edit', as:'edit_student'
   get '/student/:id', to:'student#show',as:'student'
end
