Rails.application.routes.draw do

  get 'welcome/login'
  get 'welcome/admin', as: 'admin'
  get 'welcome/user', as: 'user'

  resources :avdiscips
  resources :alunodiscs
  resources :profdisciplinas
  resources :alunos
  resources :disciplinas
  resources :professors
  
  get 'pulouavaliac' => 'avdiscips#pulouavaliac', as: 'pulouavaliac'

  #root 'alunodiscs#index'
  root 'welcome#login'

end
