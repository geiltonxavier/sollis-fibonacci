Rails.application.routes.draw do
   post '/fibonacci_sequences', to: 'fibonacci_sequences#show'
end
