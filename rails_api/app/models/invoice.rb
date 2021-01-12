# == Schema Information
#
# Table name: invoices
#
#  id         :bigint           not null, primary key
#  date       :date
#  number     :string
#  creator_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Invoice < ApplicationRecord
  belongs_to :creator, class_name: 'User'
  has_many :invoice_items, dependent: :destroy

  def total_cents
    invoice_items.sum(:price_cents)
  end

  def total
    Money.new total_cents
  end
end
