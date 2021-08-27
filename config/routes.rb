Rails.application.routes.draw do
  mount GraphiQL::Rails::Engine, at: '/graphql', graphql_path: 'graphql#execute' if Rails.env.development?
  post '/graphql', to: 'graphql#execute'
end
