module Types
  class GeekType < Types::BaseObject
    graphql_name 'Geek'
    description 'Description geek'
    field :id, GraphQL::Types::ID
    field :name, GraphQL::Types::String
    field :stack, GraphQL::Types::String
    field :resume, GraphQL::Types::Boolean
  end
end