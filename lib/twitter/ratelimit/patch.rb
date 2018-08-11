require "twitter/ratelimit/patch/version"
require "twitter"

module Twitter::REST::Request::Extend
  def perform(*args)
    body = super
    rate_limit = @rate_limit
    body.define_singleton_method :rate_limit do
      rate_limit
    end
    body
  end
end

module Twitter
  module REST
    module Utils
      def perform_request_with_objects(request_method, path, options, klass)
        pr = perform_request(request_method, path, options)
        collected = pr.collect do |element|
          klass.new(element)
        end
        collected.define_singleton_method :rate_limit do
          pr.rate_limit
        end
        collected
      end
    end
  end
end

class Twitter::Base
  def rate_limit
    attrs.rate_limit
  end
end

Twitter::REST::Request.prepend Twitter::REST::Request::Extend
