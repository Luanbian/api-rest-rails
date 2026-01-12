# frozen_string_literal: true

module Products
  module Domain
    class ProductEntity
      attr_reader :_id, :name, :description, :price

      private def initialize(data:)
        @_id = data._id
        @name = data.name
        @description = data.description
        @price = data.price
      end

      def self.build(data:)
        new(data: data)
      end
    end
  end
end
