module CurrenciesFormHelper

  def currencies_select_tag(name, options={})
    select_tag name, options_for_select(["GBP","EUR", "USD"]), options
  end
end