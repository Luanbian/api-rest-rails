# frozen_string_literal: true

module Products
  module UseCases
    class ProductShowUsecase
      def initialize(repo: Repository::ProductRepository.new)
        @repo = repo
      end

      def perform(product_id:)
        result = @repo.find_by_id(product_id)
        [{
          id: product_id,
          data: result
        }]
      end
    end
  end
end
