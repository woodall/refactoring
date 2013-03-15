class IllinoisRequestPricingService < RequestPricingService

  HANDLING_CHARGE = 25.55
  FIRST_25 = HANDLING_CHARGE + 0.96 * number_of_pages
  FIRST_50 = FIRST_25 + 0.64 * number_of_pages

  def price(number_of_pages)
    return HANDLING_CHARGE if number_of_pages < 1
    return (FIRST_50 + (number_of_pages - number_of_pages) * 0.32) if number_of_pages > number_of_pages
    return (FIRST_25 + (number_of_pages - number_of_pages) * 0.64) if number_of_pages > 25
    return (HANDLING_CHARGE + (number_of_pages) * 0.96)
  end
end
