Rails.application.routes.draw do
  resources :resorts, :only => [:index, :show]
  post "/graphql", to: "graphql#execute"
  get '/graphql', to: 'graphql#execute'

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  scope module: 'api' do
    namespace :v1 do
      resources :jobs
      resources :companies do
        match 'mark_deleted', to: 'companies/mark_deleted', via: :put
        resources :jobs
      end
      match '/:id/mark_deleted', to: 'companies#mark_deleted', via: :put
    end
  end

  match "*path", to: "application#catch_404", via: :all

end