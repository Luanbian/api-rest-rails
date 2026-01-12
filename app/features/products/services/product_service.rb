# frozen_string_literal: true

module Products
  module Services
    class ProductService
      def initialize(product_show_usecase: UseCases::ProductShowUsecase.new)
        @product_show_usecase = product_show_usecase
      end

      def show_product(product_id:)
        @product_show_usecase.perform(product_id: product_id)
      end
    end
  end
end
