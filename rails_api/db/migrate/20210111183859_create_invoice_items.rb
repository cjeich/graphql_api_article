class CreateInvoiceItems < ActiveRecord::Migration[6.0]
  def change
    create_table :invoice_items do |t|
      t.integer :amount
      t.string :description
      t.monetize :price
      t.references :invoice, null: false, foreign_key: true

      t.timestamps
    end
  end
end
