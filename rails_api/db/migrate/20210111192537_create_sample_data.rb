class CreateSampleData < ActiveRecord::Migration[6.0]
  def up
    50.times do
      User.create first_name: Faker::Name.first_name,
                  last_name: Faker::Name.last_name,
                  email: Faker::Internet.email
    end

    50_000.times do
      invoice = Invoice.create date: Faker::Date.in_date_period(month: 12),
                               number: Faker::IDNumber.spanish_citizen_number,
                               creator: User.order(Arel.sql('RANDOM()')).first

      # Invoice Items
      (15..250).to_a.sample.times do
        invoice.invoice_items.create amount: (5..250).to_a.sample,
                                     description: Faker::Hipster.sentence(word_count: 3),
                                     price_cents: (25..250_000).to_a.sample
      end
    end
  end

  def down
    Invoice.all.map(&:destroy)
    User.all.map(&:destroy)
  end
end
