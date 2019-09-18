module Types
  class CustomerType < BaseObject
    key fields: 'id'

    field :id, ID, null: false
    field :name, String, null: false
    field :account, Types::AccountType, null: true

    def self.resolve_reference(reference, context)
      { id: "1", name: "Ryan"}
    end

    def account
      {__typename: "Account", id: "1"}
    end
  end
end