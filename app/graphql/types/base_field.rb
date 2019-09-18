require 'apollo-federation'

module Types
  class BaseField < GraphQL::Schema::Field
    include ApolloFederation::Field

    argument_class Types::BaseArgument

    def resolve_field(obj, args, ctx)
      resolve(obj, args, ctx)
    end
  end
end
