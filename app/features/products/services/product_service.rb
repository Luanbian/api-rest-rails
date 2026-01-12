# frozen_string_literal: true

module Products
  module Services
    class ProductService
      def initialize(product_show_usecase: UseCases::ProductShowUsecase.new, product_create_usecase: UseCases::ProductCreateUsecase.new)
        @product_show_usecase = product_show_usecase
        @product_create_usecase = product_create_usecase
      end

      def show_product(product_id:)
        @product_show_usecase.perform(product_id: product_id)
      end

      def create_product(name:, description:, price:)
        @product_create_usecase.perform(name: name, description: description, price: price)
      end
    end
  end
end
