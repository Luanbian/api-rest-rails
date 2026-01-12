# frozen_string_literal: true

module Products
  module Repository
    class ProductRepository
      def initialize(client = ::Mongo::MongoClient.client)
        @model = client[:products]
      end

      def find_by_id(product_id)
        @model.find(_id: BSON::ObjectId.from_string(product_id)).first
      end
    end
  end
end
