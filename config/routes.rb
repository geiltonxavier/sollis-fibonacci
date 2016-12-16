Rails.application.routes.draw do
   get '/fibonacci_sequences/:quantidade', to: 'fibonacci_sequences#show'
end
