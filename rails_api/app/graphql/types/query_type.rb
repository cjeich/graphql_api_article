module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :invoices, [Types::InvoiceType], null: false, description: 'A list of invoices' do
      argument :count, Integer, required: false, default_value: 10
    end

    def invoices(count:)
      Invoice.all.limit(count)
    end

    field :invoice, Types::InvoiceType, null: false, description: 'A list of invoices' do
      argument :id, ID, required: false, default_value: 10
    end

    def invoice(id:)
      Invoice.find id

      rescue_from(ActiveRecord::RecordNotFound) do |_err, _obj, _args, _ctx, _field|
        raise GraphQL::ExecutionError, 'Invoice not found'
      end
    end
  end
end
