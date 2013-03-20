class RPSFactory
  def initialize(request, number_of_pages)
    case request
    when "IL"
      IllinoisRequestPricingService.new(request, number_of_pages)
    else
      RequestPricingService.new(request, number_of_pages)
    end
  end
end