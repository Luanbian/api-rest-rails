# frozen_string_literal: true

module Products
  module UseCases
    class ProductShowUsecase
      def perform(product_id:)
        [{
          id: product_id,
          name: 'Sample Product',
          description: 'This is a sample product description.',
          price: 19.99
        }]
      end
    end
  end
end
