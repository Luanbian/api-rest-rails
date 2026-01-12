# frozen_string_literal: true

require 'mongo'

module Mongo
  class MongoClient
    def self.client
      uri = if defined?(Rails) && Rails.respond_to?(:application)
              Rails.application.credentials.dig(:database, :url)
            else
              ENV.fetch('MONGO_URI')
            end
      raise 'MONGO_URI is not set' unless uri

      @client ||= Mongo::Client.new(uri)
    end
  end
end
