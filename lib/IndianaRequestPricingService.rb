class IndianaRequestPricingService

  def initialize(request, number_of_pages)
    @request = request
    @number_of_pages = number_of_pages
  end

  def price
    return price_above_50_pages if @number_of_pages > 50
    return price_between_10_and_50_pages if @number_of_pages > 10
    return handling_charge
  end

private

  HANDLING_CHARGE = 20.00
  TIER_ONE = 0.50
  TIER_TWO = 0.25

  def handling_charge
    HANDLING_CHARGE
  end

  def setup_costs_for_50_pages
    handling_charge + 0.64 * 50
  end


  def price_between_10_and_50_pages
    handling_charge + (@number_of_pages - 25) * TIER_ONE
  end

  def price_above_50_pages
    setup_costs_for_50_pages + (@number_of_pages - 50) * TIER_TWO
  end
end
