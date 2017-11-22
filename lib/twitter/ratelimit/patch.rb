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

class Twitter::Base
  def rate_limit
    attrs.rate_limit
  end
end

Twitter::REST::Request.prepend Twitter::REST::Request::Extend
