class HealthController < ApplicationController
  def initialize(service = GreetingService.new)
    super()
    @service = service
  end
  def show
    result = @service.greet(name: "Luan Health Check")

    render json: {
      transactionId: SecureRandom.uuid,
      message: "Service is healthy",
      data: {
        message: result
      }
    }
  end
end
