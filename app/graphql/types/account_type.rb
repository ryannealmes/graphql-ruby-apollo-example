module Types
  class AccountType < BaseObject
    key fields: 'id'
    
    extend_type

    field :id, ID, null: false, external: true
    field :customers, [Types::CustomerType], null: true

    def customers
      [
        {
          id: "1",
          name: "Tower Records"
        }
      ]
    end
  end
end