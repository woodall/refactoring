require 'IllinoisRequestPricingService'

class RPSFactory
  def initialize(request, number_of_pages)
    @state = IllinoisRequestPricingService.new(request, number_of_pages)
  end

  def price
    @state.price
  end
end