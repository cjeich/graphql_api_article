# Get rid of Deprecation warnings
Money.locale_backend = :currency

MoneyRails.configure do |config|
  config.default_currency = :usd
end
