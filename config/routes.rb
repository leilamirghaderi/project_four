Rails.application.routes.draw do
  get 'reflection/week:integer'
  get 'reflection/reaction:text'
  get 'reflection/title:string'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
