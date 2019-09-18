require 'apollo-federation'

class GraphqlRailsSchema < GraphQL::Schema
  include ApolloFederation::Schema

  query(Types::QueryType)

  orphan_types Types::AccountType
end
