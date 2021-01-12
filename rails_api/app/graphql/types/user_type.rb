module Types
  class UserType < Types::BaseObject
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :email, String, null: true
    field :invoices, [Types::InvoiceType], null: true
  end
end
