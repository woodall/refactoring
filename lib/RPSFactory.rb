class RPSFactory
  def initialize(request, number_of_pages)
    case request
    when "IL" IllinoisRequestPricingService.new(number_of_pages)
    else
      RequestPricingService.new(number_of_pages)
    end
  end
end