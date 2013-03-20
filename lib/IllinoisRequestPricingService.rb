class IllinoisRequestPricingService

  def initialize(request, number_of_pages)
    @request = request
    @number_of_pages = number_of_pages
  end

  def price
    return price_above_50_pages if @number_of_pages > 50
    return price_above_25_pages if @number_of_pages > 25
    return price_below_25_pages if @number_of_pages >= 1
    return handling_charge
  end

private

  HANDLING_CHARGE = 25.55
  TIER_ONE = 0.96
  TIER_TWO = 0.64

  def handling_charge
    HANDLING_CHARGE
  end

  def setup_costs_for_25_pages
    handling_charge + TIER_ONE * 25
  end

  def setup_costs_for_50_pages
    setup_costs_for_25_pages + TIER_TWO * 50
  end

  def price_above_50_pages
    setup_costs_for_50_pages + (@number_of_pages - 50) * 0.32
  end

  def price_above_25_pages
    setup_costs_for_25_pages + (@number_of_pages - 25) * 0.64
  end

  def price_below_25_pages
    handling_charge + (@number_of_pages) * 0.96
  end
end
