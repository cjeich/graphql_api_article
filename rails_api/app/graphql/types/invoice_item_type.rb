module Types
  class InvoiceItemType < Types::BaseObject
    field :amount, Integer, null: true
    field :description, String, null: true
    field :price, String, null: true
    field :price_cents, Integer, null: true
    field :invoice, Types::InvoiceType, null: true
  end
end
