# frozen_string_literal: true

module Products
  class ProductsController < ActionController::API
    def initialize(service: Services::ProductService.new)
      super()
      @service = service
    end

    def show
      product_id = params[:id]
      product = @service.show_product(product_id: product_id)
      render json: {
        transactionId: SecureRandom.uuid,
        message: 'Success',
        data: product
      }
    end

    def create
      name = params[:name]
      description = params[:description]
      price = params[:price]

      result = @service.create_product(name: name, description: description, price: price)

      render json: {
        transactionId: SecureRandom.uuid,
        message: 'Product created successfully',
        data: result
      }
    end
  end
end
