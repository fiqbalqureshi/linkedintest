Linkedintest::Application.routes.draw do
  root :to => 'auth#index'
  match 'auth' => 'auth#index'
  match 'profile' => 'user#profile'
  # match ':controller(/:action(/:id))(.:format)'
end
