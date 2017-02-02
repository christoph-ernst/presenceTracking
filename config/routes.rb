###
### gesehen: 9 alles


Rails.application.routes.draw do

  get 'page/home'

  get 'page/calendar'

  get 'page/presence'

  get 'page/statistics'

  get 'page/admin'

  get 'scotty/speak'

  get 'scotty/teach'

  get 'scotty/dig'

  get 'say/hello'
  # get 'say/scotty' => 'say#hello'
  get 'say/goodbye'

  get 'say/something'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
