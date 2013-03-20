class TexasRequestPricingService

  def initialize(request, number_of_pages)
    @request = request
    @number_of_pages = number_of_pages
  end

  def price
    return price_above_20_pages if @number_of_pages > 20
    return handling_charge if @number_of_pages <= 20
  end

private

  HANDLING_CHARGE = 25.00
  TIER_ONE = 0.50

  def handling_charge
    HANDLING_CHARGE
  end

  def price_above_20_pages
    handling_charge + (@number_of_pages - 20) * 0.50
  end
end
