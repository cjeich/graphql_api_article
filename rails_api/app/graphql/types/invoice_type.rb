module Types
  class InvoiceType < Types::BaseObject
    field :number, String, null: true
    field :date, String, null: true
    field :total_cents, Integer, null: true
    field :total, String, null: true
    field :invoice_items, [Types::InvoiceItemType], null: true
    field :creator, Types::UserType, null: true
  end
end