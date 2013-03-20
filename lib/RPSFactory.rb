require 'IllinoisRequestPricingService'
require 'TexasRequestPricingService'
require 'IndianaRequestPricingService'


class RPSFactory
  def initialize(request, number_of_pages)
    case request.state
    when "IL"
      @state = IllinoisRequestPricingService.new(request, number_of_pages)
    when "TX"
      @state = TexasRequestPricingService.new(request, number_of_pages)
    when "IN"
      @state = IndianaRequestPricingService.new(request, number_of_pages)
    end
  end

  def price
    @state.price
  end
end