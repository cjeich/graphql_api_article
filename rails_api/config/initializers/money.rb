# Get rid of Deprecation warnings
Money.locale_backend = :currency
Money.rounding_mode = BigDecimal::ROUND_HALF_EVEN

Money.rounding_mode =
  MoneyRails.configure do |config|
    config.default_currency = :usd
  end
