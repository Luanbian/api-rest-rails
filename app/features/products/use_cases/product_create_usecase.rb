# frozen_string_literal: true

module Products
  module UseCases
    class ProductCreateUsecase
      def initialize(repo: Repository::ProductRepository.new)
        @repo = repo
      end

      def perform(name:, description:, price:)
        data = {
          name: name,
          description: description,
          price: price
        }
        @repo.create_product(data)
      end
    end
  end
end
