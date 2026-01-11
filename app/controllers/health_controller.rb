class HealthController < ApplicationController
  def show
    render json: {
      transactionId: SecureRandom.uuid,
      message: "Service is healthy",
      data: {
        message: "OK"
      }
    }
  end
end
