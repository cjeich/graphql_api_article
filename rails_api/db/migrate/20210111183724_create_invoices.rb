class CreateInvoices < ActiveRecord::Migration[6.0]
  def change
    create_table :invoices do |t|
      t.date :date
      t.string :number
      t.references :creator, null: false, table_name: :users, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
