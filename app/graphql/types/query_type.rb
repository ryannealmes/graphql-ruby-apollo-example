module Types
  class QueryType < Types::BaseObject
    field :customers, [Types::CustomerType], null: false

    def customers
      [
        {
          id: 1,
          name: 'Ryan'
        }
      ]
    end
  end
end
