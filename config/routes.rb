Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'theater/scrape', :to => 'theater#scrape'

  resources :theater
end
