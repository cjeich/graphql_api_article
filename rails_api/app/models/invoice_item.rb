# == Schema Information
#
# Table name: invoice_items
#
#  id             :bigint           not null, primary key
#  amount         :integer
#  description    :string
#  price_cents    :integer          default(0), not null
#  price_currency :string           default("USD"), not null
#  invoice_id     :bigint           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class InvoiceItem < ApplicationRecord
  monetize :price_cents
  belongs_to :invoice
end
