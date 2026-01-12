# frozen_string_literal: true

module Products
  module Model
    module ProductSchema
      extend ActiveSupport::Concern

      included do
        include Mongoid::Document
        include Mongoid::Timestamps

        field :name, type: String
        field :description, type: String
        field :price, type: Integer

        validates :name, presence: true
        validates :price, numericality: { greater_than_or_equal_to: 0 }
      end
    end
  end
end
