###
### gesehen: 16 fertig
### 14 noch einmal gucken: DBs von Hand verändern


Rails.application.routes.draw do

  resources :players
  root 'page#home'

  get 'home' => "page#home"

  get 'calendar(/:year(/:month))'  => "page#calendar", :as => 'calendar'

  get 'presence' => "page#presence"

  get 'statistics' => "page#statistics"

  get 'admin' => "page#admin"
  post 'admin' => "page#admin"

  get 'scotty/speak'

  get 'scotty/teach'

  get 'scotty/dig'

  get 'say/hello'
  # get 'say/scotty' => 'say#hello'
  get 'say/goodbye'

  get 'say/something'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
